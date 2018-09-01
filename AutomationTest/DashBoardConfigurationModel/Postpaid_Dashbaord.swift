//
//	Postpaid_Dashbaord.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Postpaid_Dashbaord : NSObject, NSCoding{

	var additionalData027 : String!
	var additionalData090 : String!
	var data : String!
	var dollars : String!
	var kBytes : String!
	var minutes : String!
	var accountLockedAlertHeading : String!
	var accountLockedAlertMsg : String!
	var accountLockedHeading : String!
	var additionalCharges : String!
	var additionalUsage : String!
	var addons : String!
	var alertHeading : String!
	var alertMsg : String!
	var billing : String!
	var billsAndPayments : String!
	var boosters : String!
	var browseYourAddons : String!
	var entitlementIdsArr : [EntitlementIdsArr]!
	var findOutMore : String!
	var including : String!
	var information : String!
	var issueDate : String!
	var manageAddons : String!
	var mins : String!
	var monthlyPlanCosts : String!
	var needHelpUrl : String!
	var overRageDollar : String!
	var overRageGb : String!
	var overRageTitle : String!
	var reset : String!
	var rollOverDetail : String!
	var rollOverGb : String!
	var rollOverTitle : String!
	var rolloverbilling : String!
	var seeDetailedUsage : String!
	var starterData : String!
	var starterDataResId : String!
	var usageCharges : String!
	var usageTextCharges : String!
	var usageTextDetail : String!
	var usageTextTitle : String!
	var valueLeft : String!
	var youMay : String!
	var yourCurrentSpend : String!
	var yourCurrentSpendMsg : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		additionalData027 = dictionary["AdditionalData027"] as? String
		additionalData090 = dictionary["AdditionalData090"] as? String
		data = dictionary["Data"] as? String
		dollars = dictionary["Dollars"] as? String
		kBytes = dictionary["KBytes"] as? String
		minutes = dictionary["Minutes"] as? String
		accountLockedAlertHeading = dictionary["accountLockedAlertHeading"] as? String
		accountLockedAlertMsg = dictionary["accountLockedAlertMsg"] as? String
		accountLockedHeading = dictionary["accountLockedHeading"] as? String
		additionalCharges = dictionary["additionalCharges"] as? String
		additionalUsage = dictionary["additionalUsage"] as? String
		addons = dictionary["addons"] as? String
		alertHeading = dictionary["alertHeading"] as? String
		alertMsg = dictionary["alertMsg"] as? String
		billing = dictionary["billing"] as? String
		billsAndPayments = dictionary["billsAndPayments"] as? String
		boosters = dictionary["boosters"] as? String
		browseYourAddons = dictionary["browseYourAddons"] as? String
		entitlementIdsArr = [EntitlementIdsArr]()
		if let entitlementIdsArrArray = dictionary["entitlementIdsArr"] as? [[String:Any]]{
			for dic in entitlementIdsArrArray{
				let value = EntitlementIdsArr(fromDictionary: dic)
				entitlementIdsArr.append(value)
			}
		}
		findOutMore = dictionary["findOutMore"] as? String
		including = dictionary["including"] as? String
		information = dictionary["information"] as? String
		issueDate = dictionary["issueDate"] as? String
		manageAddons = dictionary["manageAddons"] as? String
		mins = dictionary["mins"] as? String
		monthlyPlanCosts = dictionary["monthlyPlanCosts"] as? String
		needHelpUrl = dictionary["needHelpUrl"] as? String
		overRageDollar = dictionary["overRageDollar"] as? String
		overRageGb = dictionary["overRageGb"] as? String
		overRageTitle = dictionary["overRageTitle"] as? String
		reset = dictionary["reset"] as? String
		rollOverDetail = dictionary["rollOverDetail"] as? String
		rollOverGb = dictionary["rollOverGb"] as? String
		rollOverTitle = dictionary["rollOverTitle"] as? String
		rolloverbilling = dictionary["rolloverbilling"] as? String
		seeDetailedUsage = dictionary["seeDetailedUsage"] as? String
		starterData = dictionary["starterData"] as? String
		starterDataResId = dictionary["starterDataResId"] as? String
		usageCharges = dictionary["usageCharges"] as? String
		usageTextCharges = dictionary["usageTextCharges"] as? String
		usageTextDetail = dictionary["usageTextDetail"] as? String
		usageTextTitle = dictionary["usageTextTitle"] as? String
		valueLeft = dictionary["valueLeft"] as? String
		youMay = dictionary["youMay"] as? String
		yourCurrentSpend = dictionary["yourCurrentSpend"] as? String
		yourCurrentSpendMsg = dictionary["yourCurrentSpendMsg"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if additionalData027 != nil{
			dictionary["AdditionalData027"] = additionalData027
		}
		if additionalData090 != nil{
			dictionary["AdditionalData090"] = additionalData090
		}
		if data != nil{
			dictionary["Data"] = data
		}
		if dollars != nil{
			dictionary["Dollars"] = dollars
		}
		if kBytes != nil{
			dictionary["KBytes"] = kBytes
		}
		if minutes != nil{
			dictionary["Minutes"] = minutes
		}
		if accountLockedAlertHeading != nil{
			dictionary["accountLockedAlertHeading"] = accountLockedAlertHeading
		}
		if accountLockedAlertMsg != nil{
			dictionary["accountLockedAlertMsg"] = accountLockedAlertMsg
		}
		if accountLockedHeading != nil{
			dictionary["accountLockedHeading"] = accountLockedHeading
		}
		if additionalCharges != nil{
			dictionary["additionalCharges"] = additionalCharges
		}
		if additionalUsage != nil{
			dictionary["additionalUsage"] = additionalUsage
		}
		if addons != nil{
			dictionary["addons"] = addons
		}
		if alertHeading != nil{
			dictionary["alertHeading"] = alertHeading
		}
		if alertMsg != nil{
			dictionary["alertMsg"] = alertMsg
		}
		if billing != nil{
			dictionary["billing"] = billing
		}
		if billsAndPayments != nil{
			dictionary["billsAndPayments"] = billsAndPayments
		}
		if boosters != nil{
			dictionary["boosters"] = boosters
		}
		if browseYourAddons != nil{
			dictionary["browseYourAddons"] = browseYourAddons
		}
		if entitlementIdsArr != nil{
			var dictionaryElements = [[String:Any]]()
			for entitlementIdsArrElement in entitlementIdsArr {
				dictionaryElements.append(entitlementIdsArrElement.toDictionary())
			}
			dictionary["entitlementIdsArr"] = dictionaryElements
		}
		if findOutMore != nil{
			dictionary["findOutMore"] = findOutMore
		}
		if including != nil{
			dictionary["including"] = including
		}
		if information != nil{
			dictionary["information"] = information
		}
		if issueDate != nil{
			dictionary["issueDate"] = issueDate
		}
		if manageAddons != nil{
			dictionary["manageAddons"] = manageAddons
		}
		if mins != nil{
			dictionary["mins"] = mins
		}
		if monthlyPlanCosts != nil{
			dictionary["monthlyPlanCosts"] = monthlyPlanCosts
		}
		if needHelpUrl != nil{
			dictionary["needHelpUrl"] = needHelpUrl
		}
		if overRageDollar != nil{
			dictionary["overRageDollar"] = overRageDollar
		}
		if overRageGb != nil{
			dictionary["overRageGb"] = overRageGb
		}
		if overRageTitle != nil{
			dictionary["overRageTitle"] = overRageTitle
		}
		if reset != nil{
			dictionary["reset"] = reset
		}
		if rollOverDetail != nil{
			dictionary["rollOverDetail"] = rollOverDetail
		}
		if rollOverGb != nil{
			dictionary["rollOverGb"] = rollOverGb
		}
		if rollOverTitle != nil{
			dictionary["rollOverTitle"] = rollOverTitle
		}
		if rolloverbilling != nil{
			dictionary["rolloverbilling"] = rolloverbilling
		}
		if seeDetailedUsage != nil{
			dictionary["seeDetailedUsage"] = seeDetailedUsage
		}
		if starterData != nil{
			dictionary["starterData"] = starterData
		}
		if starterDataResId != nil{
			dictionary["starterDataResId"] = starterDataResId
		}
		if usageCharges != nil{
			dictionary["usageCharges"] = usageCharges
		}
		if usageTextCharges != nil{
			dictionary["usageTextCharges"] = usageTextCharges
		}
		if usageTextDetail != nil{
			dictionary["usageTextDetail"] = usageTextDetail
		}
		if usageTextTitle != nil{
			dictionary["usageTextTitle"] = usageTextTitle
		}
		if valueLeft != nil{
			dictionary["valueLeft"] = valueLeft
		}
		if youMay != nil{
			dictionary["youMay"] = youMay
		}
		if yourCurrentSpend != nil{
			dictionary["yourCurrentSpend"] = yourCurrentSpend
		}
		if yourCurrentSpendMsg != nil{
			dictionary["yourCurrentSpendMsg"] = yourCurrentSpendMsg
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         additionalData027 = aDecoder.decodeObject(forKey: "AdditionalData027") as? String
         additionalData090 = aDecoder.decodeObject(forKey: "AdditionalData090") as? String
         data = aDecoder.decodeObject(forKey: "Data") as? String
         dollars = aDecoder.decodeObject(forKey: "Dollars") as? String
         kBytes = aDecoder.decodeObject(forKey: "KBytes") as? String
         minutes = aDecoder.decodeObject(forKey: "Minutes") as? String
         accountLockedAlertHeading = aDecoder.decodeObject(forKey: "accountLockedAlertHeading") as? String
         accountLockedAlertMsg = aDecoder.decodeObject(forKey: "accountLockedAlertMsg") as? String
         accountLockedHeading = aDecoder.decodeObject(forKey: "accountLockedHeading") as? String
         additionalCharges = aDecoder.decodeObject(forKey: "additionalCharges") as? String
         additionalUsage = aDecoder.decodeObject(forKey: "additionalUsage") as? String
         addons = aDecoder.decodeObject(forKey: "addons") as? String
         alertHeading = aDecoder.decodeObject(forKey: "alertHeading") as? String
         alertMsg = aDecoder.decodeObject(forKey: "alertMsg") as? String
         billing = aDecoder.decodeObject(forKey: "billing") as? String
         billsAndPayments = aDecoder.decodeObject(forKey: "billsAndPayments") as? String
         boosters = aDecoder.decodeObject(forKey: "boosters") as? String
         browseYourAddons = aDecoder.decodeObject(forKey: "browseYourAddons") as? String
         entitlementIdsArr = aDecoder.decodeObject(forKey :"entitlementIdsArr") as? [EntitlementIdsArr]
         findOutMore = aDecoder.decodeObject(forKey: "findOutMore") as? String
         including = aDecoder.decodeObject(forKey: "including") as? String
         information = aDecoder.decodeObject(forKey: "information") as? String
         issueDate = aDecoder.decodeObject(forKey: "issueDate") as? String
         manageAddons = aDecoder.decodeObject(forKey: "manageAddons") as? String
         mins = aDecoder.decodeObject(forKey: "mins") as? String
         monthlyPlanCosts = aDecoder.decodeObject(forKey: "monthlyPlanCosts") as? String
         needHelpUrl = aDecoder.decodeObject(forKey: "needHelpUrl") as? String
         overRageDollar = aDecoder.decodeObject(forKey: "overRageDollar") as? String
         overRageGb = aDecoder.decodeObject(forKey: "overRageGb") as? String
         overRageTitle = aDecoder.decodeObject(forKey: "overRageTitle") as? String
         reset = aDecoder.decodeObject(forKey: "reset") as? String
         rollOverDetail = aDecoder.decodeObject(forKey: "rollOverDetail") as? String
         rollOverGb = aDecoder.decodeObject(forKey: "rollOverGb") as? String
         rollOverTitle = aDecoder.decodeObject(forKey: "rollOverTitle") as? String
         rolloverbilling = aDecoder.decodeObject(forKey: "rolloverbilling") as? String
         seeDetailedUsage = aDecoder.decodeObject(forKey: "seeDetailedUsage") as? String
         starterData = aDecoder.decodeObject(forKey: "starterData") as? String
         starterDataResId = aDecoder.decodeObject(forKey: "starterDataResId") as? String
         usageCharges = aDecoder.decodeObject(forKey: "usageCharges") as? String
         usageTextCharges = aDecoder.decodeObject(forKey: "usageTextCharges") as? String
         usageTextDetail = aDecoder.decodeObject(forKey: "usageTextDetail") as? String
         usageTextTitle = aDecoder.decodeObject(forKey: "usageTextTitle") as? String
         valueLeft = aDecoder.decodeObject(forKey: "valueLeft") as? String
         youMay = aDecoder.decodeObject(forKey: "youMay") as? String
         yourCurrentSpend = aDecoder.decodeObject(forKey: "yourCurrentSpend") as? String
         yourCurrentSpendMsg = aDecoder.decodeObject(forKey: "yourCurrentSpendMsg") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if additionalData027 != nil{
			aCoder.encode(additionalData027, forKey: "AdditionalData027")
		}
		if additionalData090 != nil{
			aCoder.encode(additionalData090, forKey: "AdditionalData090")
		}
		if data != nil{
			aCoder.encode(data, forKey: "Data")
		}
		if dollars != nil{
			aCoder.encode(dollars, forKey: "Dollars")
		}
		if kBytes != nil{
			aCoder.encode(kBytes, forKey: "KBytes")
		}
		if minutes != nil{
			aCoder.encode(minutes, forKey: "Minutes")
		}
		if accountLockedAlertHeading != nil{
			aCoder.encode(accountLockedAlertHeading, forKey: "accountLockedAlertHeading")
		}
		if accountLockedAlertMsg != nil{
			aCoder.encode(accountLockedAlertMsg, forKey: "accountLockedAlertMsg")
		}
		if accountLockedHeading != nil{
			aCoder.encode(accountLockedHeading, forKey: "accountLockedHeading")
		}
		if additionalCharges != nil{
			aCoder.encode(additionalCharges, forKey: "additionalCharges")
		}
		if additionalUsage != nil{
			aCoder.encode(additionalUsage, forKey: "additionalUsage")
		}
		if addons != nil{
			aCoder.encode(addons, forKey: "addons")
		}
		if alertHeading != nil{
			aCoder.encode(alertHeading, forKey: "alertHeading")
		}
		if alertMsg != nil{
			aCoder.encode(alertMsg, forKey: "alertMsg")
		}
		if billing != nil{
			aCoder.encode(billing, forKey: "billing")
		}
		if billsAndPayments != nil{
			aCoder.encode(billsAndPayments, forKey: "billsAndPayments")
		}
		if boosters != nil{
			aCoder.encode(boosters, forKey: "boosters")
		}
		if browseYourAddons != nil{
			aCoder.encode(browseYourAddons, forKey: "browseYourAddons")
		}
		if entitlementIdsArr != nil{
			aCoder.encode(entitlementIdsArr, forKey: "entitlementIdsArr")
		}
		if findOutMore != nil{
			aCoder.encode(findOutMore, forKey: "findOutMore")
		}
		if including != nil{
			aCoder.encode(including, forKey: "including")
		}
		if information != nil{
			aCoder.encode(information, forKey: "information")
		}
		if issueDate != nil{
			aCoder.encode(issueDate, forKey: "issueDate")
		}
		if manageAddons != nil{
			aCoder.encode(manageAddons, forKey: "manageAddons")
		}
		if mins != nil{
			aCoder.encode(mins, forKey: "mins")
		}
		if monthlyPlanCosts != nil{
			aCoder.encode(monthlyPlanCosts, forKey: "monthlyPlanCosts")
		}
		if needHelpUrl != nil{
			aCoder.encode(needHelpUrl, forKey: "needHelpUrl")
		}
		if overRageDollar != nil{
			aCoder.encode(overRageDollar, forKey: "overRageDollar")
		}
		if overRageGb != nil{
			aCoder.encode(overRageGb, forKey: "overRageGb")
		}
		if overRageTitle != nil{
			aCoder.encode(overRageTitle, forKey: "overRageTitle")
		}
		if reset != nil{
			aCoder.encode(reset, forKey: "reset")
		}
		if rollOverDetail != nil{
			aCoder.encode(rollOverDetail, forKey: "rollOverDetail")
		}
		if rollOverGb != nil{
			aCoder.encode(rollOverGb, forKey: "rollOverGb")
		}
		if rollOverTitle != nil{
			aCoder.encode(rollOverTitle, forKey: "rollOverTitle")
		}
		if rolloverbilling != nil{
			aCoder.encode(rolloverbilling, forKey: "rolloverbilling")
		}
		if seeDetailedUsage != nil{
			aCoder.encode(seeDetailedUsage, forKey: "seeDetailedUsage")
		}
		if starterData != nil{
			aCoder.encode(starterData, forKey: "starterData")
		}
		if starterDataResId != nil{
			aCoder.encode(starterDataResId, forKey: "starterDataResId")
		}
		if usageCharges != nil{
			aCoder.encode(usageCharges, forKey: "usageCharges")
		}
		if usageTextCharges != nil{
			aCoder.encode(usageTextCharges, forKey: "usageTextCharges")
		}
		if usageTextDetail != nil{
			aCoder.encode(usageTextDetail, forKey: "usageTextDetail")
		}
		if usageTextTitle != nil{
			aCoder.encode(usageTextTitle, forKey: "usageTextTitle")
		}
		if valueLeft != nil{
			aCoder.encode(valueLeft, forKey: "valueLeft")
		}
		if youMay != nil{
			aCoder.encode(youMay, forKey: "youMay")
		}
		if yourCurrentSpend != nil{
			aCoder.encode(yourCurrentSpend, forKey: "yourCurrentSpend")
		}
		if yourCurrentSpendMsg != nil{
			aCoder.encode(yourCurrentSpendMsg, forKey: "yourCurrentSpendMsg")
		}

	}

}
