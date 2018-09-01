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
        
        //read and parse strings json file
        guard let localizedStringsData = getFileData(Named: "localized.json") else {
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
//        guard let configurationModelObject = try? JSONDecoder().decode(DashBoardConfigurationModel.self, from: configurationFileData) else {
//            print("ERROR: Can not decode config.json")
//            exit(0)
//        }
//
//        var configurationDictionary = [String: Any]()
//        do {
//            configurationDictionary = try configurationModelObject.asDictionary()
//        }catch {
//            print("ERROR: Couldn't convert configuration object to dictionary" + error.localizedDescription)
//            exit(0)
//        }
        
        let projectPath = "/Users/mac/Desktop/"
        let filesToOperateOn = getValidFiles(withPath: projectPath)
        for filePath in filesToOperateOn{
            
            guard let fileContent = getFileContent(Named: projectPath + "/" + filePath) else{
                print("Warning: couldn't get \(filePath) content! but i will continue")
                continue
            }
            
            let fullLocalizationLineOfCodeRegex = "R.string.localizable.[a-zA-Z0-9]\\w+\\(\\)"
            let localizationLines = matches(forRegex: fullLocalizationLineOfCodeRegex, inText: fileContent)
            if localizationLines.count == 0{
                print("Couldn't find localizations at \(filePath) and i will continue")
                continue
            }
            
            //            print("\(localizationLines) \n \(localizationLines.count) \n")
            
            let localizationKeys = localizationLines.map { (line) -> String in
                return String.init(line.split(separator: ".")[3].dropLast(2))
            }
            
            //            print("\(localizationKeys) \n \(localizationLines.count) \n")
            
            var updateLocalizationFile = false
            guard var localizationFileContent = getFileContent(Named: projectPath + "/" + "localized.json") else {
                print("ERROR: Can not read localized.json to edit it")
                exit(0)
            }
            
            //check if the localization value has a match in the configuration file
            var configurationMatches = Dictionary<String,String>()
            
            for i in 0..<localizationKeys.count{
//                print("will try to find value for key: \(localizationKeys[i])\n")
                let localizationValue = localizationModelObject.value(forKey: localizationKeys[i]) as? String ?? "no value"
//                print("found a value: \(localizationValue), for key: \(localizationKeys[i])\n")
                getValueMatches(fromDic: configurationDictionary, forValue: localizationValue, intoDic: &configurationMatches, withRoot: "")
                
                guard configurationMatches.count > 0 else{
                    print("Couldn't find a match for key: \(localizationKeys[i]), value: \(localizationValue)\n")
                    continue
                }
                
                if let mappedConfigurationKey = (configurationMatches.first { (key,value) -> Bool in
                    return value == localizationValue}?.key)
                {
                    updateLocalizationFile = true
                    var key = mappedConfigurationKey
                    if key.contains("."){
                        key = mappedConfigurationKey.components(separatedBy: ".").last ?? "no key"
                    }
                    localizationFileContent = localizationFileContent.replacingOccurrences(of: localizationKeys[i], with: key)
                    print(localizationFileContent)
                }
            }
            
            if updateLocalizationFile{
                do {
                    let emptyString = ""
                    try emptyString.write(toFile: projectPath + "/" + "localized.json", atomically: false, encoding: String.Encoding.utf8)
                    try localizationFileContent.write(toFile: projectPath + "/" + "localized.json", atomically: false, encoding: String.Encoding.utf8)

                }catch{
                    print("ERROR: couldn't update localization file! - description: \(error.localizedDescription)")
                    exit(0)
                }
            }
            
            print("\(configurationMatches) \n\n")
            
            for match in configurationMatches{
                
                var key = match.key
                if match.key.contains("."){
                    key = match.key.components(separatedBy: ".").last ?? "no key"
                }
                
            }
            
        }
    }
    
//    getStringForView(ofConfigurationKey: R.string.localizable.termsAndConditionLabel.key, andConfigurationValue: RechargeConfiguration.sharedInstance?.reviewAndPay?.termsAndConditionLabel, andLocalString: R.string.localizable.termsAndConditionLabel())

    func getFileData(Named name: String) -> Data?{
        
        guard let filePath = Bundle.main.path(forResource: name, ofType: nil) else {
            return nil
        }
        let url = URL.init(fileURLWithPath: filePath)
        return try? Data.init(contentsOf: url)
        
    }
    
    func getValidFiles(withPath path: String) -> [String]{
        var validFiles = [String]()
        do {
            try validFiles = FileManager.default.contentsOfDirectory(atPath: path).filter({ (path) -> Bool in
                return path.lowercased().contains("view")
            })
        } catch  {
            print(error.localizedDescription)
        }
        
        return validFiles
    }
    
    func getFileContent(Named name: String) -> String?{
        do {
            return try String.init(contentsOfFile: name)
        }catch{
            print("couldn't read file content + error: " + error.localizedDescription)
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
    
//    func extractErrors(jsonObject: Any, errors: inout [String]) {
//        if let array = jsonObject as? [Any] {
//            array.forEach {
//                extractErrors(jsonObject: $0, errors: &errors)
//            }
//        }
//        else if let dict = jsonObject as? [String : Any] {
//            for key in dict.keys {
//                if key == "errors", let errorList = dict[key] as? [String] {
//                    errorList.forEach { errors.append($0) }
//                }
//                else {
//                    extractErrors(jsonObject: dict[key]!, errors: &errors)
//                }
//            }
//        }
//    }
    
}

