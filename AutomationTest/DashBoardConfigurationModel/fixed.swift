//
//	fixed.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Fixed : NSObject, NSCoding{

	var tM : String!
	var active : String!
	var basiclabel : String!
	var installTrouble : String!
	var installpipefive : String!
	var installpipefour : String!
	var installpipeone : String!
	var installpipethree : String!
	var installpipetwo : String!
	var isFixed : Bool!
	var isNow : String!
	var name : String!
	var needHelpUrlPipe : String!
	var pipelabelfive : String!
	var pipelabelfour : String!
	var pipelabelone : String!
	var pipelabelthree : String!
	var pipelabeltwo : String!
	var tracklabelone : String!
	var tracklabeltwo : String!
	var videodata : [Videodata]!
	var wifibutton : String!
	var wifilabel : String!
	var wifiparagraph : String!
	var yourVodafoneNBN : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		tM = dictionary["TM"] as? String
		active = dictionary["active"] as? String
		basiclabel = dictionary["basiclabel"] as? String
		installTrouble = dictionary["installTrouble"] as? String
		installpipefive = dictionary["installpipefive"] as? String
		installpipefour = dictionary["installpipefour"] as? String
		installpipeone = dictionary["installpipeone"] as? String
		installpipethree = dictionary["installpipethree"] as? String
		installpipetwo = dictionary["installpipetwo"] as? String
		isFixed = dictionary["isFixed"] as? Bool
		isNow = dictionary["isNow"] as? String
		name = dictionary["name"] as? String
		needHelpUrlPipe = dictionary["needHelpUrlPipe"] as? String
		pipelabelfive = dictionary["pipelabelfive"] as? String
		pipelabelfour = dictionary["pipelabelfour"] as? String
		pipelabelone = dictionary["pipelabelone"] as? String
		pipelabelthree = dictionary["pipelabelthree"] as? String
		pipelabeltwo = dictionary["pipelabeltwo"] as? String
		tracklabelone = dictionary["tracklabelone"] as? String
		tracklabeltwo = dictionary["tracklabeltwo"] as? String
		videodata = [Videodata]()
		if let videodataArray = dictionary["videodata"] as? [[String:Any]]{
			for dic in videodataArray{
				let value = Videodata(fromDictionary: dic)
				videodata.append(value)
			}
		}
		wifibutton = dictionary["wifibutton"] as? String
		wifilabel = dictionary["wifilabel"] as? String
		wifiparagraph = dictionary["wifiparagraph"] as? String
		yourVodafoneNBN = dictionary["yourVodafoneNBN"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if tM != nil{
			dictionary["TM"] = tM
		}
		if active != nil{
			dictionary["active"] = active
		}
		if basiclabel != nil{
			dictionary["basiclabel"] = basiclabel
		}
		if installTrouble != nil{
			dictionary["installTrouble"] = installTrouble
		}
		if installpipefive != nil{
			dictionary["installpipefive"] = installpipefive
		}
		if installpipefour != nil{
			dictionary["installpipefour"] = installpipefour
		}
		if installpipeone != nil{
			dictionary["installpipeone"] = installpipeone
		}
		if installpipethree != nil{
			dictionary["installpipethree"] = installpipethree
		}
		if installpipetwo != nil{
			dictionary["installpipetwo"] = installpipetwo
		}
		if isFixed != nil{
			dictionary["isFixed"] = isFixed
		}
		if isNow != nil{
			dictionary["isNow"] = isNow
		}
		if name != nil{
			dictionary["name"] = name
		}
		if needHelpUrlPipe != nil{
			dictionary["needHelpUrlPipe"] = needHelpUrlPipe
		}
		if pipelabelfive != nil{
			dictionary["pipelabelfive"] = pipelabelfive
		}
		if pipelabelfour != nil{
			dictionary["pipelabelfour"] = pipelabelfour
		}
		if pipelabelone != nil{
			dictionary["pipelabelone"] = pipelabelone
		}
		if pipelabelthree != nil{
			dictionary["pipelabelthree"] = pipelabelthree
		}
		if pipelabeltwo != nil{
			dictionary["pipelabeltwo"] = pipelabeltwo
		}
		if tracklabelone != nil{
			dictionary["tracklabelone"] = tracklabelone
		}
		if tracklabeltwo != nil{
			dictionary["tracklabeltwo"] = tracklabeltwo
		}
		if videodata != nil{
			var dictionaryElements = [[String:Any]]()
			for videodataElement in videodata {
				dictionaryElements.append(videodataElement.toDictionary())
			}
			dictionary["videodata"] = dictionaryElements
		}
		if wifibutton != nil{
			dictionary["wifibutton"] = wifibutton
		}
		if wifilabel != nil{
			dictionary["wifilabel"] = wifilabel
		}
		if wifiparagraph != nil{
			dictionary["wifiparagraph"] = wifiparagraph
		}
		if yourVodafoneNBN != nil{
			dictionary["yourVodafoneNBN"] = yourVodafoneNBN
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         tM = aDecoder.decodeObject(forKey: "TM") as? String
         active = aDecoder.decodeObject(forKey: "active") as? String
         basiclabel = aDecoder.decodeObject(forKey: "basiclabel") as? String
         installTrouble = aDecoder.decodeObject(forKey: "installTrouble") as? String
         installpipefive = aDecoder.decodeObject(forKey: "installpipefive") as? String
         installpipefour = aDecoder.decodeObject(forKey: "installpipefour") as? String
         installpipeone = aDecoder.decodeObject(forKey: "installpipeone") as? String
         installpipethree = aDecoder.decodeObject(forKey: "installpipethree") as? String
         installpipetwo = aDecoder.decodeObject(forKey: "installpipetwo") as? String
         isFixed = aDecoder.decodeObject(forKey: "isFixed") as? Bool
         isNow = aDecoder.decodeObject(forKey: "isNow") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         needHelpUrlPipe = aDecoder.decodeObject(forKey: "needHelpUrlPipe") as? String
         pipelabelfive = aDecoder.decodeObject(forKey: "pipelabelfive") as? String
         pipelabelfour = aDecoder.decodeObject(forKey: "pipelabelfour") as? String
         pipelabelone = aDecoder.decodeObject(forKey: "pipelabelone") as? String
         pipelabelthree = aDecoder.decodeObject(forKey: "pipelabelthree") as? String
         pipelabeltwo = aDecoder.decodeObject(forKey: "pipelabeltwo") as? String
         tracklabelone = aDecoder.decodeObject(forKey: "tracklabelone") as? String
         tracklabeltwo = aDecoder.decodeObject(forKey: "tracklabeltwo") as? String
         videodata = aDecoder.decodeObject(forKey :"videodata") as? [Videodata]
         wifibutton = aDecoder.decodeObject(forKey: "wifibutton") as? String
         wifilabel = aDecoder.decodeObject(forKey: "wifilabel") as? String
         wifiparagraph = aDecoder.decodeObject(forKey: "wifiparagraph") as? String
         yourVodafoneNBN = aDecoder.decodeObject(forKey: "yourVodafoneNBN") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if tM != nil{
			aCoder.encode(tM, forKey: "TM")
		}
		if active != nil{
			aCoder.encode(active, forKey: "active")
		}
		if basiclabel != nil{
			aCoder.encode(basiclabel, forKey: "basiclabel")
		}
		if installTrouble != nil{
			aCoder.encode(installTrouble, forKey: "installTrouble")
		}
		if installpipefive != nil{
			aCoder.encode(installpipefive, forKey: "installpipefive")
		}
		if installpipefour != nil{
			aCoder.encode(installpipefour, forKey: "installpipefour")
		}
		if installpipeone != nil{
			aCoder.encode(installpipeone, forKey: "installpipeone")
		}
		if installpipethree != nil{
			aCoder.encode(installpipethree, forKey: "installpipethree")
		}
		if installpipetwo != nil{
			aCoder.encode(installpipetwo, forKey: "installpipetwo")
		}
		if isFixed != nil{
			aCoder.encode(isFixed, forKey: "isFixed")
		}
		if isNow != nil{
			aCoder.encode(isNow, forKey: "isNow")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if needHelpUrlPipe != nil{
			aCoder.encode(needHelpUrlPipe, forKey: "needHelpUrlPipe")
		}
		if pipelabelfive != nil{
			aCoder.encode(pipelabelfive, forKey: "pipelabelfive")
		}
		if pipelabelfour != nil{
			aCoder.encode(pipelabelfour, forKey: "pipelabelfour")
		}
		if pipelabelone != nil{
			aCoder.encode(pipelabelone, forKey: "pipelabelone")
		}
		if pipelabelthree != nil{
			aCoder.encode(pipelabelthree, forKey: "pipelabelthree")
		}
		if pipelabeltwo != nil{
			aCoder.encode(pipelabeltwo, forKey: "pipelabeltwo")
		}
		if tracklabelone != nil{
			aCoder.encode(tracklabelone, forKey: "tracklabelone")
		}
		if tracklabeltwo != nil{
			aCoder.encode(tracklabeltwo, forKey: "tracklabeltwo")
		}
		if videodata != nil{
			aCoder.encode(videodata, forKey: "videodata")
		}
		if wifibutton != nil{
			aCoder.encode(wifibutton, forKey: "wifibutton")
		}
		if wifilabel != nil{
			aCoder.encode(wifilabel, forKey: "wifilabel")
		}
		if wifiparagraph != nil{
			aCoder.encode(wifiparagraph, forKey: "wifiparagraph")
		}
		if yourVodafoneNBN != nil{
			aCoder.encode(yourVodafoneNBN, forKey: "yourVodafoneNBN")
		}

	}

}
