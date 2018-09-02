//
//  ViewController.swift
//  AutomationTest
//
//  Created by mac on 8/30/18.
//  Copyright © 2018 Abdo. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    override func viewDidAppear() {
        super.viewDidAppear()
        
        let localizationFileName = "localized.json"
        let modelName = "AddonsConfigurationFile"
        let localizationFilePath = "/Users/mac/Desktop/localized.json"
        
        //read and parse strings json file
        guard let localizedStringsData = getFileData(Named: localizationFileName) else {
            print("ERROR: Can not find localized.json")
            exit(0)
        }
        
        guard let localizationModelObject = try? JSONDecoder().decode(LocalizationStringsModel.self, from: localizedStringsData) else {
            print("ERROR: Can not decode localized.json")
            exit(0)
        }
        
        //read and parse configuration json file
        guard let configurationFileData = getFileData(Named: "config.json") else {
            print("ERROR: Can not find config.json")
            exit(0)
        }
        guard let configurationModelObject = try? JSONSerialization.jsonObject(with: configurationFileData, options: []) as? [String: AnyObject] else {
            print("ERROR: Can not decode config.json")
            exit(0)
        }
        
        guard let configurationDictionary = configurationModelObject else {
            print("ERROR: Configuration Model could not be a dictionary!")
            exit(0)
        }
        
        let projectPath = "/Users/mac/Documents/VFAU-iOS/MyVodafone-Gold/Postpaid Addons"
        var filesToOperateOn = [String]()
        getValidFiles(withPath: projectPath, inArray: &filesToOperateOn)
//        print("preparing to work on the following files...\n\(filesToOperateOn)\n")
        
        sleep(20)
        for filePath in filesToOperateOn{
            
            print("will work on file: \(filePath)\n")
            guard var sourceCodefileContent = getFileContent(Named: filePath) else{
                print("Warning: couldn't get \(filePath) content! but i will continue to the next file\n")
                continue
            }
            
            let fullLocalizationLineOfCodeRegex = "R.string.localizable.[a-zA-Z0-9]\\w+\\(\\)"
            let localizationLines = matches(forRegex: fullLocalizationLineOfCodeRegex, inText: sourceCodefileContent)
            if localizationLines.count == 0{
                print("Couldn't find localizations at \(filePath) and i will continue to the next file\n")
                continue
            }
            //            print("\(localizationLines) \n \(localizationLines.count) \n")
            
            let localizationKeys = localizationLines.map { (line) -> String in
                return String.init(line.split(separator: ".")[3].dropLast(2))
            }
            //            print("\(localizationKeys) \n \(localizationLines.count) \n")
            
            var updateFiles = false
            guard var localizationFileContent = getFileContent(Named: localizationFilePath) else {
                print("ERROR: Can not read localized.json to edit it")
                exit(0)
            }
            
            //check if the localization value has a match in the configuration file and update files if exists
            
            var totalConfigurationMatches = Dictionary<String,String>()
            for i in 0..<localizationKeys.count{
                
                //                print("will try to find value for key: \(localizationKeys[i])\n")
                guard localizationModelObject.responds(to: Selector(localizationKeys[i].lowercased())) else{
//                    print("Most probably that the key: \(localizationKeys[i]) which you are looking for is configuration key, so localization model can't find it. so we will continue with next keys ^_^\n")
                    continue
                }
                let localizationValue = localizationModelObject.value(forKey: localizationKeys[i].lowercased()) as? String ?? "corrupted_value"
//                print("found a value: \(localizationValue), for key: \(localizationKeys[i])\n")
                
                var configurationMatches = Dictionary<String,String>()
                getValueMatches(fromDic: configurationDictionary, forValue: localizationValue, intoDic: &configurationMatches, withRoot: "")
                guard configurationMatches.count > 0 else{
                    print("Couldn't find a match for key: \(localizationKeys[i]), value: \(localizationValue)\n")
                    continue
                }
                totalConfigurationMatches.merge(configurationMatches, uniquingKeysWith: { (v1, v2) -> String in
                    return v1
                })
                updateFiles = true
                
                //update localization file
                if let mappedConfigurationPath = (configurationMatches.first { (key,value) -> Bool in
                    return value == localizationValue}?.key)
                {
                    var key = mappedConfigurationPath
                    if key.contains("."){
                        key = mappedConfigurationPath.components(separatedBy: ".").last ?? "corrupted_key"
                    }
                    localizationFileContent = localizationFileContent.replacingOccurrences(of: localizationKeys[i], with: key)
                }
                
                //update configuration file
                if let matchedLine = (localizationLines.first(where: { (line) -> Bool in
                    
                    return String.init(line.split(separator: ".")[3].dropLast(2)) == localizationKeys[i]
                }))
                {
                    if let mappedConfigurationPath = (configurationMatches.first { (key,value) -> Bool in
                        return value == localizationValue}?.key)
                    {
                        var key = mappedConfigurationPath
                        if key.contains("."){
                            key = mappedConfigurationPath.components(separatedBy: ".").last ?? "corrupted_key"
                        }
                        
                        let codeSnippet = "getStringForView(ofConfigurationKey: R.string.localizable.\(key).key, andConfigurationValue: \(modelName).sharedInstance?.\(mappedConfigurationPath.replacingOccurrences(of: ".", with: "?.")), andLocalString: R.string.localizable.\(key)())"
                        sourceCodefileContent = sourceCodefileContent.replacingOccurrences(of: matchedLine, with: codeSnippet)
                        print("Replaced: \(matchedLine), for key: \(localizationKeys[i]), with snippet of Configuration Key: \(key)\n")
                    }
                }
            }
            
            print("Found keys: \(totalConfigurationMatches) in \(filePath) and replaced them.\n\n")
            
            if updateFiles{
                updateFiles = false
                do {
                    let emptyString = ""
                    try emptyString.write(toFile: localizationFilePath, atomically: false, encoding: String.Encoding.utf8)
                    try localizationFileContent.write(toFile: localizationFilePath, atomically: false, encoding: String.Encoding.utf8)
                    
                    try emptyString.write(toFile: filePath, atomically: false, encoding: .utf8)
                    try sourceCodefileContent.write(toFile: filePath, atomically: false, encoding: .utf8)
                    
                    print("\(filePath) updated and done.")

                }catch{
                    print("ERROR: couldn't update localization file or source code file named: \(filePath)! - description: \(error.localizedDescription)")
                    exit(0)
                }
            }
        }
    }

    func getFileData(Named name: String) -> Data?{
        
        guard let filePath = Bundle.main.path(forResource: name, ofType: nil) else {
            return nil
        }
        let url = URL.init(fileURLWithPath: filePath)
        return try? Data.init(contentsOf: url)
        
    }
    
    func getValidFiles(withPath path: String, inArray array: inout [String]){

        var isDir : ObjCBool = false
        do {
            if FileManager.default.fileExists(atPath: path, isDirectory: &isDir) {
                if isDir.boolValue {
                    
//                    print("file exists and is a directory\n")
                    let allSubDirectories = try FileManager.default.contentsOfDirectory(atPath: path)
                    allSubDirectories.forEach({ (subDirectory) in
                        let subPath = path + "/" + subDirectory
                        getValidFiles(withPath: subPath, inArray: &array)
                    })
                    
                } else {
//                    print("file exists and is not a directory\n")
                    if path.contains(".swift"){
                        array.append(path)
                    }
                }
            } else {
//                print("file does not exist\n")
            }
        } catch  {
            print(error.localizedDescription)
        }
    }

    func getFileContent(Named name: String) -> String?{
        do {
            return try String.init(contentsOfFile: name)
        }catch{
            print("couldn't read file content + error: " + error.localizedDescription + "\n and file name is: \(name)")
        }
        return nil
    }
    
    func matches(forRegex regex: String, inText text: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let results = regex.matches(in: text, range: NSRange(text.startIndex..., in: text))
            return results.map {
                String(text[Range($0.range, in: text)!])
            }
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
    
    func getValueMatches(fromDic dic: Dictionary<String, AnyObject>, forValue value: String, intoDic matches: inout Dictionary<String,String>, withRoot root: String){
        for (k,v) in dic{
//            print("configuration key: \(k), value: \(v)\n")
            var path = String()
            if root != ""{
                path = root + "." + k
            }
    
            if (v as? String) == (value){
                matches[path] = v as? String
                
            }else if let numericValue = v as? Int{
                
                if String(numericValue) == value{
                    matches[path] = String(numericValue)
                }
                
            }else if let subDictionary = v as? Dictionary<String, AnyObject>{
                
                getValueMatches(fromDic: subDictionary , forValue: value, intoDic: &matches, withRoot: k)
                
            }else if let subArray = v as? [Any]{
                
                subArray.forEach { (object) in
                    
                    if let subDictionary = object as? Dictionary<String, AnyObject>{
                        getValueMatches(fromDic: subDictionary, forValue: value, intoDic: &matches, withRoot: k)
                        
                    }else if (object as? String) == (value){
                        matches[path] = v as? String
                        
                    }else if let numericValue = object as? Int{
                        
                        if String(numericValue) == value{
                            matches[path] = String(numericValue)
                        }
                    }
                }
            }
        }
    }
    
}

