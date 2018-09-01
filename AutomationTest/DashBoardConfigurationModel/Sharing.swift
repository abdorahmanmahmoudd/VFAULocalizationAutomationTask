//
//	Sharing.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Sharing : NSObject, NSCoding{

	var tM : String!
	var addCharges : String!
	var alertErrorHeading : String!
	var alertErrorMsg : String!
	var alertGetErrorMsg : String!
	var alertMsg : String!
	var allCurrentSpend : String!
	var billsAndPaymentBtn : String!
	var cancelBtn : String!
	var hideUsers : String!
	var includedOtherCharges : String!
	var including : String!
	var manageDataControl : String!
	var mobileBroadband : String!
	var overlayAftText : String!
	var overlayBefText : String!
	var overlayTitle : String!
	var pinLoaderMsg : String!
	var saveSettingsBtn : String!
	var seeAllSpendBtn : String!
	var serviceID : String!
	var sharedDataUsageBreakdown : String!
	var sharedIntMinsBreakdown : String!
	var showAllUsersBtn : String!
	var usageCharges : String!
	var used : String!
	var vodafoneNBN : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		tM = dictionary["TM"] as? String
		addCharges = dictionary["addCharges"] as? String
		alertErrorHeading = dictionary["alertErrorHeading"] as? String
		alertErrorMsg = dictionary["alertErrorMsg"] as? String
		alertGetErrorMsg = dictionary["alertGetErrorMsg"] as? String
		alertMsg = dictionary["alertMsg"] as? String
		allCurrentSpend = dictionary["allCurrentSpend"] as? String
		billsAndPaymentBtn = dictionary["billsAndPaymentBtn"] as? String
		cancelBtn = dictionary["cancelBtn"] as? String
		hideUsers = dictionary["hideUsers"] as? String
		includedOtherCharges = dictionary["includedOtherCharges"] as? String
		including = dictionary["including"] as? String
		manageDataControl = dictionary["manageDataControl"] as? String
		mobileBroadband = dictionary["mobileBroadband"] as? String
		overlayAftText = dictionary["overlayAftText"] as? String
		overlayBefText = dictionary["overlayBefText"] as? String
		overlayTitle = dictionary["overlayTitle"] as? String
		pinLoaderMsg = dictionary["pinLoaderMsg"] as? String
		saveSettingsBtn = dictionary["saveSettingsBtn"] as? String
		seeAllSpendBtn = dictionary["seeAllSpendBtn"] as? String
		serviceID = dictionary["serviceID"] as? String
		sharedDataUsageBreakdown = dictionary["sharedDataUsageBreakdown"] as? String
		sharedIntMinsBreakdown = dictionary["sharedIntMinsBreakdown"] as? String
		showAllUsersBtn = dictionary["showAllUsersBtn"] as? String
		usageCharges = dictionary["usageCharges"] as? String
		used = dictionary["used"] as? String
		vodafoneNBN = dictionary["vodafoneNBN"] as? String
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
		if addCharges != nil{
			dictionary["addCharges"] = addCharges
		}
		if alertErrorHeading != nil{
			dictionary["alertErrorHeading"] = alertErrorHeading
		}
		if alertErrorMsg != nil{
			dictionary["alertErrorMsg"] = alertErrorMsg
		}
		if alertGetErrorMsg != nil{
			dictionary["alertGetErrorMsg"] = alertGetErrorMsg
		}
		if alertMsg != nil{
			dictionary["alertMsg"] = alertMsg
		}
		if allCurrentSpend != nil{
			dictionary["allCurrentSpend"] = allCurrentSpend
		}
		if billsAndPaymentBtn != nil{
			dictionary["billsAndPaymentBtn"] = billsAndPaymentBtn
		}
		if cancelBtn != nil{
			dictionary["cancelBtn"] = cancelBtn
		}
		if hideUsers != nil{
			dictionary["hideUsers"] = hideUsers
		}
		if includedOtherCharges != nil{
			dictionary["includedOtherCharges"] = includedOtherCharges
		}
		if including != nil{
			dictionary["including"] = including
		}
		if manageDataControl != nil{
			dictionary["manageDataControl"] = manageDataControl
		}
		if mobileBroadband != nil{
			dictionary["mobileBroadband"] = mobileBroadband
		}
		if overlayAftText != nil{
			dictionary["overlayAftText"] = overlayAftText
		}
		if overlayBefText != nil{
			dictionary["overlayBefText"] = overlayBefText
		}
		if overlayTitle != nil{
			dictionary["overlayTitle"] = overlayTitle
		}
		if pinLoaderMsg != nil{
			dictionary["pinLoaderMsg"] = pinLoaderMsg
		}
		if saveSettingsBtn != nil{
			dictionary["saveSettingsBtn"] = saveSettingsBtn
		}
		if seeAllSpendBtn != nil{
			dictionary["seeAllSpendBtn"] = seeAllSpendBtn
		}
		if serviceID != nil{
			dictionary["serviceID"] = serviceID
		}
		if sharedDataUsageBreakdown != nil{
			dictionary["sharedDataUsageBreakdown"] = sharedDataUsageBreakdown
		}
		if sharedIntMinsBreakdown != nil{
			dictionary["sharedIntMinsBreakdown"] = sharedIntMinsBreakdown
		}
		if showAllUsersBtn != nil{
			dictionary["showAllUsersBtn"] = showAllUsersBtn
		}
		if usageCharges != nil{
			dictionary["usageCharges"] = usageCharges
		}
		if used != nil{
			dictionary["used"] = used
		}
		if vodafoneNBN != nil{
			dictionary["vodafoneNBN"] = vodafoneNBN
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
         addCharges = aDecoder.decodeObject(forKey: "addCharges") as? String
         alertErrorHeading = aDecoder.decodeObject(forKey: "alertErrorHeading") as? String
         alertErrorMsg = aDecoder.decodeObject(forKey: "alertErrorMsg") as? String
         alertGetErrorMsg = aDecoder.decodeObject(forKey: "alertGetErrorMsg") as? String
         alertMsg = aDecoder.decodeObject(forKey: "alertMsg") as? String
         allCurrentSpend = aDecoder.decodeObject(forKey: "allCurrentSpend") as? String
         billsAndPaymentBtn = aDecoder.decodeObject(forKey: "billsAndPaymentBtn") as? String
         cancelBtn = aDecoder.decodeObject(forKey: "cancelBtn") as? String
         hideUsers = aDecoder.decodeObject(forKey: "hideUsers") as? String
         includedOtherCharges = aDecoder.decodeObject(forKey: "includedOtherCharges") as? String
         including = aDecoder.decodeObject(forKey: "including") as? String
         manageDataControl = aDecoder.decodeObject(forKey: "manageDataControl") as? String
         mobileBroadband = aDecoder.decodeObject(forKey: "mobileBroadband") as? String
         overlayAftText = aDecoder.decodeObject(forKey: "overlayAftText") as? String
         overlayBefText = aDecoder.decodeObject(forKey: "overlayBefText") as? String
         overlayTitle = aDecoder.decodeObject(forKey: "overlayTitle") as? String
         pinLoaderMsg = aDecoder.decodeObject(forKey: "pinLoaderMsg") as? String
         saveSettingsBtn = aDecoder.decodeObject(forKey: "saveSettingsBtn") as? String
         seeAllSpendBtn = aDecoder.decodeObject(forKey: "seeAllSpendBtn") as? String
         serviceID = aDecoder.decodeObject(forKey: "serviceID") as? String
         sharedDataUsageBreakdown = aDecoder.decodeObject(forKey: "sharedDataUsageBreakdown") as? String
         sharedIntMinsBreakdown = aDecoder.decodeObject(forKey: "sharedIntMinsBreakdown") as? String
         showAllUsersBtn = aDecoder.decodeObject(forKey: "showAllUsersBtn") as? String
         usageCharges = aDecoder.decodeObject(forKey: "usageCharges") as? String
         used = aDecoder.decodeObject(forKey: "used") as? String
         vodafoneNBN = aDecoder.decodeObject(forKey: "vodafoneNBN") as? String

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
		if addCharges != nil{
			aCoder.encode(addCharges, forKey: "addCharges")
		}
		if alertErrorHeading != nil{
			aCoder.encode(alertErrorHeading, forKey: "alertErrorHeading")
		}
		if alertErrorMsg != nil{
			aCoder.encode(alertErrorMsg, forKey: "alertErrorMsg")
		}
		if alertGetErrorMsg != nil{
			aCoder.encode(alertGetErrorMsg, forKey: "alertGetErrorMsg")
		}
		if alertMsg != nil{
			aCoder.encode(alertMsg, forKey: "alertMsg")
		}
		if allCurrentSpend != nil{
			aCoder.encode(allCurrentSpend, forKey: "allCurrentSpend")
		}
		if billsAndPaymentBtn != nil{
			aCoder.encode(billsAndPaymentBtn, forKey: "billsAndPaymentBtn")
		}
		if cancelBtn != nil{
			aCoder.encode(cancelBtn, forKey: "cancelBtn")
		}
		if hideUsers != nil{
			aCoder.encode(hideUsers, forKey: "hideUsers")
		}
		if includedOtherCharges != nil{
			aCoder.encode(includedOtherCharges, forKey: "includedOtherCharges")
		}
		if including != nil{
			aCoder.encode(including, forKey: "including")
		}
		if manageDataControl != nil{
			aCoder.encode(manageDataControl, forKey: "manageDataControl")
		}
		if mobileBroadband != nil{
			aCoder.encode(mobileBroadband, forKey: "mobileBroadband")
		}
		if overlayAftText != nil{
			aCoder.encode(overlayAftText, forKey: "overlayAftText")
		}
		if overlayBefText != nil{
			aCoder.encode(overlayBefText, forKey: "overlayBefText")
		}
		if overlayTitle != nil{
			aCoder.encode(overlayTitle, forKey: "overlayTitle")
		}
		if pinLoaderMsg != nil{
			aCoder.encode(pinLoaderMsg, forKey: "pinLoaderMsg")
		}
		if saveSettingsBtn != nil{
			aCoder.encode(saveSettingsBtn, forKey: "saveSettingsBtn")
		}
		if seeAllSpendBtn != nil{
			aCoder.encode(seeAllSpendBtn, forKey: "seeAllSpendBtn")
		}
		if serviceID != nil{
			aCoder.encode(serviceID, forKey: "serviceID")
		}
		if sharedDataUsageBreakdown != nil{
			aCoder.encode(sharedDataUsageBreakdown, forKey: "sharedDataUsageBreakdown")
		}
		if sharedIntMinsBreakdown != nil{
			aCoder.encode(sharedIntMinsBreakdown, forKey: "sharedIntMinsBreakdown")
		}
		if showAllUsersBtn != nil{
			aCoder.encode(showAllUsersBtn, forKey: "showAllUsersBtn")
		}
		if usageCharges != nil{
			aCoder.encode(usageCharges, forKey: "usageCharges")
		}
		if used != nil{
			aCoder.encode(used, forKey: "used")
		}
		if vodafoneNBN != nil{
			aCoder.encode(vodafoneNBN, forKey: "vodafoneNBN")
		}

	}

}