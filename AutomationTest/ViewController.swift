//
//  ViewController.swift
//  AutomationTest
//
//  Created by mac on 8/30/18.
//  Copyright © 2018 Abdo. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTextFieldDelegate {
    
    @IBOutlet weak var pathTextField: NSTextField!
    @IBOutlet weak var rootClassNameTextField: NSTextField!
    
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
                    
                    //file exists and is a directory
                    let allSubDirectories = try FileManager.default.contentsOfDirectory(atPath: path)
                    allSubDirectories.forEach({ (subDirectory) in
                        let subPath = path + "/" + subDirectory
                        getValidFiles(withPath: subPath, inArray: &array)
                    })
                    
                } else {
                    //file exists and is not a directory
                    if path.contains(".swift"){
                        array.append(path)
                    }
                }
            } else {
                //file does not exist
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
            //d.
            var path = k
            if root != ""{
                path = root + "." + k
            }
    
            if (v as? String) == (value){
                matches[path] = value
                
            }else if let numericValue = v as? Int{
                if String(numericValue) == value{
                    matches[path] = value
                }
                
            }else if let subDictionary = v as? Dictionary<String, AnyObject>{
                
                getValueMatches(fromDic: subDictionary , forValue: value, intoDic: &matches, withRoot: path)
                
            }else if let subArray = v as? [Any]{
                
                getValueMatches(fromArr: subArray, forValue: value, intoDic: &matches, withRoot: path)
            }
        }
    }
    
    func getValueMatches(fromArr arr: [Any], forValue value: String, intoDic matches: inout Dictionary<String,String>, withRoot root:String){
        
        for i in 0..<arr.count{
            let key = "\(root)[\(i)]"
            if (arr[i] as? String) == value{
                matches[key] = value
                
            }else if let numericValue = arr[i] as? Int{
                if String(numericValue) == value{
                    matches[key] = value
                }
                
            }else if let subDictionary = arr[i] as? Dictionary<String,AnyObject>{
                getValueMatches(fromDic: subDictionary , forValue: value, intoDic: &matches, withRoot: key)
                
            }else if let subArray = arr[i] as? [Any]{
                getValueMatches(fromArr: subArray, forValue: value, intoDic: &matches, withRoot: key)
                
            }
        }
    }
    
    
    func startProcess(withModelName modelName: String, andPath projectPath: String){
        
        let localizationFileName = "localized.json" // this file should contains old Localizable.strings
        let configurationJson = "config.json" // This file should contains the new model Json
        
        //read and parse strings json file
        guard let localizedData = getFileData(Named: localizationFileName) else {
            print("ERROR: Can not find localized.json")
            print("I will EXIST NOW")
            exit(0)
        }
        
        guard let localizedModel = try? JSONDecoder().decode(LocalizedModel.self, from: localizedData) else {
            print("ERROR: Can not decode localized.json")
            print("I will EXIST NOW")
            exit(0)
        }
        
        //read and parse configuration json file
        guard let configurationData = getFileData(Named: configurationJson) else {
            print("ERROR: Can not find config.json")
            print("I will EXIST NOW")
            exit(0)
        }
        guard let configurationModel = try? JSONSerialization.jsonObject(with: configurationData, options: []) as? [String: AnyObject] else {
            print("ERROR: Can not decode config.json")
            print("I will EXIST NOW")
            exit(0)
        }
        
        guard let configurationDictionary = configurationModel else {
            print("ERROR: Configuration Model could not be a dictionary!")
            print("I will EXIST NOW")
            exit(0)
        }
        
        var filesToOperateOn = [String]()
        getValidFiles(withPath: projectPath, inArray: &filesToOperateOn)
        
        for filePath in filesToOperateOn{
            
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
            
            let localizationKeys = localizationLines.map { (line) -> String in
                return String.init(line.split(separator: ".")[3].dropLast(2))
            }
            
            var updateFiles = false
            let projectLocalizationFilePath = "/Users/abdorahman/GitHub/VFAU-iOS/MyVodafone-Gold/en-AU.lproj/Localizable.strings"
            guard var projectLocalizationFileContent = getFileContent(Named: projectLocalizationFilePath)else{
                print("Couldn't open project localization file .strings and i will stop\n")
                print("I will EXIST NOW")
                exit(0)
            }
            print("File: \(filePath), impacted by the following configuration: \(modelName)")
            //check if the localization value has a match in the configuration file and update files if exists
            var totalConfigurationMatches = Dictionary<String,String>()
            for i in 0..<localizationKeys.count{
                
                guard localizedModel.responds(to: Selector(localizationKeys[i].lowercased())) else{
                    //                    print("Most probably that the key: \(localizationKeys[i]) which you are looking for is configuration key, so localization model can't find it. so we will continue with next keys ^_^\n")
                    continue
                }
                guard let localizationValue = localizedModel.value(forKey: localizationKeys[i].lowercased()) as? String else {
                    print("Couldn't fetch the value of \(localizationKeys[i].lowercased()) key\n")
                    continue
                }
                
                var configurationMatches = Dictionary<String,String>()
                getValueMatches(fromDic: configurationDictionary, forValue: localizationValue, intoDic: &configurationMatches, withRoot: "")
                guard configurationMatches.count > 0 else{
                    print("Couldn't find a match for key: \(localizationKeys[i]), value: \(localizationValue), at model: \(modelName)\n")
                    continue
                }
                totalConfigurationMatches.merge(configurationMatches, uniquingKeysWith: { (v1, v2) -> String in
                    return v1
                })
                updateFiles = true
                
                //update project localization file
                if let configurationValuePath = (configurationMatches.first { (key,value) -> Bool in
                    return value == localizationValue}?.key)
                {
                    let key = (configurationValuePath.contains(".") ? (configurationValuePath.components(separatedBy: ".").last ?? "corrupted_key") : configurationValuePath)
                    print("key = \(key), and localizationkey = \(localizationKeys[i])\n")
                    if key == localizationKeys[i]{
                        continue
                    }
                    projectLocalizationFileContent = projectLocalizationFileContent.replacingOccurrences(of: localizationKeys[i], with: key, options: .literal, range: nil)
                    
                    //update configuration file
                    if let matchedLine = (localizationLines.first(where: { (line) -> Bool in
                        
                        return String.init(line.split(separator: ".")[3].dropLast(2)) == localizationKeys[i]
                    }))
                    {
                        if var configurationValuePath = (configurationMatches.first { (key,value) -> Bool in
                            return value == localizationValue}?.key)
                        {
                            let key = (configurationValuePath.contains(".") ? (configurationValuePath.lowercased().components(separatedBy: ".").last ?? "corrupted_key") : configurationValuePath.lowercased())
                            
                            let codeSnippet = "getStringForView(ofConfigurationKey: R.string.localizable.\(key).key, andConfigurationValue: \(modelName).sharedInstance?.\(configurationValuePath.attributePath()), andLocalString: R.string.localizable.\(key)())"
                            
                            sourceCodefileContent = sourceCodefileContent.replacingOccurrences(of: matchedLine, with: codeSnippet)
                            print("Replaced: \(matchedLine), of key: \(localizationKeys[i]), with snippet of Configuration Key: \(key)\n")
                        }
                    }
                }
            }
            
            print("Found keys: \(totalConfigurationMatches) in \(filePath) and replaced them.\n\n")
            
            if updateFiles{
                updateFiles = false
                do {
                    let emptyString = ""
                    
                    try emptyString.write(toFile: filePath, atomically: false, encoding: .utf8)
                    try sourceCodefileContent.write(toFile: filePath, atomically: false, encoding: .utf8)
                    
                    try projectLocalizationFileContent.write(toFile: projectLocalizationFilePath, atomically: true, encoding: .utf8)
                    
                    print("\(filePath) updated")
                    
                }catch{
                    print("ERROR: couldn't update localization file or source code file named: \(filePath)! - description: \(error.localizedDescription)\n")
                    print("I will EXIST NOW")
                    exit(0)
                }
            }
        }
        print("hooof.. Done El7")
    }
    
    func removeOccurence(fromFilePath path: String){
        
        guard let fileContent = getFileContent(Named: path) else {
            showAlert(withTitle: nil, andMessage: "Couldn't read file")
            return
        }
        
        let fileLines = fileContent.components(separatedBy: "\n")
        
        var nonOccurenceLines = [String]()
        fileLines.forEach { (line) in
            if !nonOccurenceLines.contains(line){
                nonOccurenceLines.append(line)
            }
        }
        
        do {
            let emptyString = ""
            
            try emptyString.write(toFile: path, atomically: false, encoding: .utf8)
            try nonOccurenceLines.joined(separator: "\n").write(toFile: path, atomically: false, encoding: .utf8)
            
            print("\(path) updated.")
            
        }catch{
            showAlert(withTitle: nil, andMessage: "ERROR: couldn't update file : \(path)! - description: \(error.localizedDescription)\n")
            return
        }
        
    }
    
    func showAlert(withTitle title: String?, andMessage message: String?) {
        let alert = NSAlert.init()
        alert.informativeText = title ?? ""
        alert.messageText = message ?? ""
        alert.alertStyle = .warning
        alert.runModal()
    }
    
    func getMissingKeys(againstFile filePath: String ){
        
        guard let newFileContent = getFileContent(Named: filePath) else {
            showAlert(withTitle: nil, andMessage: "Couldn't read file")
            return
        }
        
        guard let newFileData = newFileContent.data(using: .utf8) else  {
            showAlert(withTitle: nil, andMessage: "Couldn't convert file content to Data")
            return
        }
        
        guard let decodedNewFileJSONUsingOldModel = try? JSONDecoder().decode(LocalizedModel.self, from: newFileData) else {
            showAlert(withTitle: nil, andMessage: "Error while decoding..")
            return
        }
        
        let mirror = Mirror.init(reflecting: decodedNewFileJSONUsingOldModel)
        var missedKeys = ""
        for (attribute, value) in mirror.children {
            guard let v = (value as? String) else {
                continue
            }
            missedKeys = missedKeys.appending("key: \"\(attribute?.lowercased() ?? "invalid_key")\", value: \"\(v)\",\n")
        }
        if let desktopDir = ProcessInfo.init().environment["HOME"]?.appending("/Desktop"){
            try? missedKeys.write(toFile: desktopDir + "/missedKeys", atomically: false, encoding: .utf8)
        }else {
            showAlert(withTitle: nil, andMessage: "Couldn't get desktop directory")
        }
    }
    
    //MARK: IBActions
    @IBAction func btnStartClicked(_ sender: NSButton) {
        if !pathTextField.stringValue.isEmpty && !rootClassNameTextField.stringValue.isEmpty{
            startProcess(withModelName: rootClassNameTextField.stringValue, andPath: pathTextField.stringValue)
        }else{
            showAlert(withTitle: nil, andMessage: "Please enter project path and model name")
        }
    }
    
    @IBAction func btnRemoveOccurenceClicked(_ sender: NSButton) {
        if !pathTextField.stringValue.isEmpty {
            removeOccurence(fromFilePath: pathTextField.stringValue)
        }else{
            showAlert(withTitle: nil, andMessage: "Please enter file path")
        }
    }

    @IBAction func btnGetMissingKeyClicked(_ sender: NSButton) {
        if !pathTextField.stringValue.isEmpty {
            getMissingKeys(againstFile: pathTextField.stringValue)
        }else{
            showAlert(withTitle: nil, andMessage: "Please enter file path")
        }
    }
}

