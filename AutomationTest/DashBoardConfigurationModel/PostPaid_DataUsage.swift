//
//	PostPaid_DataUsage.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class PostPaid_DataUsage : NSObject, NSCoding{

	var additionalDataExpiryText : String!
	var additionalDataText : String!
	var alertHeading : String!
	var alertMsg : String!
	var australiaDataText : String!
	var dailyBreakDownTimeZoneText : String!
	var dataResetText : String!
	var detailedUsageButtontext : String!
	var selectedServiceTitle : String!
	var subTitleMyDailyBreakdown : String!
	var titleDailyBreakdown : String!
	var titleDataUsage : String!
	var titleMyDailyBreakdown : String!
	var titleSharedDataUsage : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		additionalDataExpiryText = dictionary["additionalDataExpiryText"] as? String
		additionalDataText = dictionary["additionalDataText"] as? String
		alertHeading = dictionary["alertHeading"] as? String
		alertMsg = dictionary["alertMsg"] as? String
		australiaDataText = dictionary["australiaDataText"] as? String
		dailyBreakDownTimeZoneText = dictionary["dailyBreakDownTimeZoneText"] as? String
		dataResetText = dictionary["dataResetText"] as? String
		detailedUsageButtontext = dictionary["detailedUsageButtontext"] as? String
		selectedServiceTitle = dictionary["selectedServiceTitle"] as? String
		subTitleMyDailyBreakdown = dictionary["subTitleMyDailyBreakdown"] as? String
		titleDailyBreakdown = dictionary["titleDailyBreakdown"] as? String
		titleDataUsage = dictionary["titleDataUsage"] as? String
		titleMyDailyBreakdown = dictionary["titleMyDailyBreakdown"] as? String
		titleSharedDataUsage = dictionary["titleSharedDataUsage"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if additionalDataExpiryText != nil{
			dictionary["additionalDataExpiryText"] = additionalDataExpiryText
		}
		if additionalDataText != nil{
			dictionary["additionalDataText"] = additionalDataText
		}
		if alertHeading != nil{
			dictionary["alertHeading"] = alertHeading
		}
		if alertMsg != nil{
			dictionary["alertMsg"] = alertMsg
		}
		if australiaDataText != nil{
			dictionary["australiaDataText"] = australiaDataText
		}
		if dailyBreakDownTimeZoneText != nil{
			dictionary["dailyBreakDownTimeZoneText"] = dailyBreakDownTimeZoneText
		}
		if dataResetText != nil{
			dictionary["dataResetText"] = dataResetText
		}
		if detailedUsageButtontext != nil{
			dictionary["detailedUsageButtontext"] = detailedUsageButtontext
		}
		if selectedServiceTitle != nil{
			dictionary["selectedServiceTitle"] = selectedServiceTitle
		}
		if subTitleMyDailyBreakdown != nil{
			dictionary["subTitleMyDailyBreakdown"] = subTitleMyDailyBreakdown
		}
		if titleDailyBreakdown != nil{
			dictionary["titleDailyBreakdown"] = titleDailyBreakdown
		}
		if titleDataUsage != nil{
			dictionary["titleDataUsage"] = titleDataUsage
		}
		if titleMyDailyBreakdown != nil{
			dictionary["titleMyDailyBreakdown"] = titleMyDailyBreakdown
		}
		if titleSharedDataUsage != nil{
			dictionary["titleSharedDataUsage"] = titleSharedDataUsage
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         additionalDataExpiryText = aDecoder.decodeObject(forKey: "additionalDataExpiryText") as? String
         additionalDataText = aDecoder.decodeObject(forKey: "additionalDataText") as? String
         alertHeading = aDecoder.decodeObject(forKey: "alertHeading") as? String
         alertMsg = aDecoder.decodeObject(forKey: "alertMsg") as? String
         australiaDataText = aDecoder.decodeObject(forKey: "australiaDataText") as? String
         dailyBreakDownTimeZoneText = aDecoder.decodeObject(forKey: "dailyBreakDownTimeZoneText") as? String
         dataResetText = aDecoder.decodeObject(forKey: "dataResetText") as? String
         detailedUsageButtontext = aDecoder.decodeObject(forKey: "detailedUsageButtontext") as? String
         selectedServiceTitle = aDecoder.decodeObject(forKey: "selectedServiceTitle") as? String
         subTitleMyDailyBreakdown = aDecoder.decodeObject(forKey: "subTitleMyDailyBreakdown") as? String
         titleDailyBreakdown = aDecoder.decodeObject(forKey: "titleDailyBreakdown") as? String
         titleDataUsage = aDecoder.decodeObject(forKey: "titleDataUsage") as? String
         titleMyDailyBreakdown = aDecoder.decodeObject(forKey: "titleMyDailyBreakdown") as? String
         titleSharedDataUsage = aDecoder.decodeObject(forKey: "titleSharedDataUsage") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if additionalDataExpiryText != nil{
			aCoder.encode(additionalDataExpiryText, forKey: "additionalDataExpiryText")
		}
		if additionalDataText != nil{
			aCoder.encode(additionalDataText, forKey: "additionalDataText")
		}
		if alertHeading != nil{
			aCoder.encode(alertHeading, forKey: "alertHeading")
		}
		if alertMsg != nil{
			aCoder.encode(alertMsg, forKey: "alertMsg")
		}
		if australiaDataText != nil{
			aCoder.encode(australiaDataText, forKey: "australiaDataText")
		}
		if dailyBreakDownTimeZoneText != nil{
			aCoder.encode(dailyBreakDownTimeZoneText, forKey: "dailyBreakDownTimeZoneText")
		}
		if dataResetText != nil{
			aCoder.encode(dataResetText, forKey: "dataResetText")
		}
		if detailedUsageButtontext != nil{
			aCoder.encode(detailedUsageButtontext, forKey: "detailedUsageButtontext")
		}
		if selectedServiceTitle != nil{
			aCoder.encode(selectedServiceTitle, forKey: "selectedServiceTitle")
		}
		if subTitleMyDailyBreakdown != nil{
			aCoder.encode(subTitleMyDailyBreakdown, forKey: "subTitleMyDailyBreakdown")
		}
		if titleDailyBreakdown != nil{
			aCoder.encode(titleDailyBreakdown, forKey: "titleDailyBreakdown")
		}
		if titleDataUsage != nil{
			aCoder.encode(titleDataUsage, forKey: "titleDataUsage")
		}
		if titleMyDailyBreakdown != nil{
			aCoder.encode(titleMyDailyBreakdown, forKey: "titleMyDailyBreakdown")
		}
		if titleSharedDataUsage != nil{
			aCoder.encode(titleSharedDataUsage, forKey: "titleSharedDataUsage")
		}

	}

}