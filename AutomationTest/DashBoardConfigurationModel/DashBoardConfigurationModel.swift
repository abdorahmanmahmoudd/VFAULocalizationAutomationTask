//
//	DashBoardConfigurationModel.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class DashBoardConfigurationModel : NSObject, NSCoding{

	var default_Error_Scenario : [Default_Error_Scenario]!
	var error_Scenario_Unbilled : [Error_Scenario_Unbilled]!
	var fixed_Dashboard : Fixed_Dashboard!
	var generic : Generic!
	var generic_Error_Scenario : [Generic_Error_Scenario]!
	var maintenance_Page : Maintenance_Page!
	var postPaid_DataUsage : PostPaid_DataUsage!
	var postpaid_Dashbaord : Postpaid_Dashbaord!
	var pre_Dashboard_Credit : Pre_Dashboard_Credit!
	var prepaid_XMAS_offer : [Prepaid_XMAS_offer]!
	var request_Error_Scenario : Request_Error_Scenario!
	var sharing : Sharing!
	var termsnCond_Dash_Board : TermsnCond_Dash_Board!
	var voice_Of_Vodafone : Voice_Of_Vodafone!
	var accountBlockList : [String]!
	var appTogglerTime : Int!
	var applicationName : String!
	var channelName : String!
	var creditBonus : [String]!
	var fixed : Fixed!
	var loaderTimer : Int!
	var walletSuppressToggle : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		default_Error_Scenario = [Default_Error_Scenario]()
		if let default_Error_ScenarioArray = dictionary["Default_Error_Scenario"] as? [[String:Any]]{
			for dic in default_Error_ScenarioArray{
				let value = Default_Error_Scenario(fromDictionary: dic)
				default_Error_Scenario.append(value)
			}
		}
		error_Scenario_Unbilled = [Error_Scenario_Unbilled]()
		if let error_Scenario_UnbilledArray = dictionary["Error_Scenario_Unbilled"] as? [[String:Any]]{
			for dic in error_Scenario_UnbilledArray{
				let value = Error_Scenario_Unbilled(fromDictionary: dic)
				error_Scenario_Unbilled.append(value)
			}
		}
		if let fixed_DashboardData = dictionary["Fixed_Dashboard"] as? [String:Any]{
			fixed_Dashboard = Fixed_Dashboard(fromDictionary: fixed_DashboardData)
		}
		if let genericData = dictionary["Generic"] as? [String:Any]{
			generic = Generic(fromDictionary: genericData)
		}
		generic_Error_Scenario = [Generic_Error_Scenario]()
		if let generic_Error_ScenarioArray = dictionary["Generic_Error_Scenario"] as? [[String:Any]]{
			for dic in generic_Error_ScenarioArray{
				let value = Generic_Error_Scenario(fromDictionary: dic)
				generic_Error_Scenario.append(value)
			}
		}
		if let maintenance_PageData = dictionary["Maintenance_Page"] as? [String:Any]{
			maintenance_Page = Maintenance_Page(fromDictionary: maintenance_PageData)
		}
		if let postPaid_DataUsageData = dictionary["PostPaid_DataUsage"] as? [String:Any]{
			postPaid_DataUsage = PostPaid_DataUsage(fromDictionary: postPaid_DataUsageData)
		}
		if let postpaid_DashbaordData = dictionary["Postpaid_Dashbaord"] as? [String:Any]{
			postpaid_Dashbaord = Postpaid_Dashbaord(fromDictionary: postpaid_DashbaordData)
		}
		if let pre_Dashboard_CreditData = dictionary["Pre_Dashboard_Credit"] as? [String:Any]{
			pre_Dashboard_Credit = Pre_Dashboard_Credit(fromDictionary: pre_Dashboard_CreditData)
		}
		prepaid_XMAS_offer = [Prepaid_XMAS_offer]()
		if let prepaid_XMAS_offerArray = dictionary["Prepaid_XMAS_offer"] as? [[String:Any]]{
			for dic in prepaid_XMAS_offerArray{
				let value = Prepaid_XMAS_offer(fromDictionary: dic)
				prepaid_XMAS_offer.append(value)
			}
		}
		if let request_Error_ScenarioData = dictionary["Request_Error_Scenario"] as? [String:Any]{
			request_Error_Scenario = Request_Error_Scenario(fromDictionary: request_Error_ScenarioData)
		}
		if let sharingData = dictionary["Sharing"] as? [String:Any]{
			sharing = Sharing(fromDictionary: sharingData)
		}
		if let termsnCond_Dash_BoardData = dictionary["TermsnCond_Dash_Board"] as? [String:Any]{
			termsnCond_Dash_Board = TermsnCond_Dash_Board(fromDictionary: termsnCond_Dash_BoardData)
		}
		if let voice_Of_VodafoneData = dictionary["Voice_Of_Vodafone"] as? [String:Any]{
			voice_Of_Vodafone = Voice_Of_Vodafone(fromDictionary: voice_Of_VodafoneData)
		}
		accountBlockList = dictionary["accountBlockList"] as? [String]
		appTogglerTime = dictionary["appTogglerTime"] as? Int
		applicationName = dictionary["applicationName"] as? String
		channelName = dictionary["channelName"] as? String
		creditBonus = dictionary["creditBonus"] as? [String]
		if let fixedData = dictionary["fixed"] as? [String:Any]{
			fixed = Fixed(fromDictionary: fixedData)
		}
		loaderTimer = dictionary["loaderTimer"] as? Int
		walletSuppressToggle = dictionary["walletSuppressToggle"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if default_Error_Scenario != nil{
			var dictionaryElements = [[String:Any]]()
			for default_Error_ScenarioElement in default_Error_Scenario {
				dictionaryElements.append(default_Error_ScenarioElement.toDictionary())
			}
			dictionary["Default_Error_Scenario"] = dictionaryElements
		}
		if error_Scenario_Unbilled != nil{
			var dictionaryElements = [[String:Any]]()
			for error_Scenario_UnbilledElement in error_Scenario_Unbilled {
				dictionaryElements.append(error_Scenario_UnbilledElement.toDictionary())
			}
			dictionary["Error_Scenario_Unbilled"] = dictionaryElements
		}
		if fixed_Dashboard != nil{
			dictionary["Fixed_Dashboard"] = fixed_Dashboard.toDictionary()
		}
		if generic != nil{
			dictionary["Generic"] = generic.toDictionary()
		}
		if generic_Error_Scenario != nil{
			var dictionaryElements = [[String:Any]]()
			for generic_Error_ScenarioElement in generic_Error_Scenario {
				dictionaryElements.append(generic_Error_ScenarioElement.toDictionary())
			}
			dictionary["Generic_Error_Scenario"] = dictionaryElements
		}
		if maintenance_Page != nil{
			dictionary["Maintenance_Page"] = maintenance_Page.toDictionary()
		}
		if postPaid_DataUsage != nil{
			dictionary["PostPaid_DataUsage"] = postPaid_DataUsage.toDictionary()
		}
		if postpaid_Dashbaord != nil{
			dictionary["Postpaid_Dashbaord"] = postpaid_Dashbaord.toDictionary()
		}
		if pre_Dashboard_Credit != nil{
			dictionary["Pre_Dashboard_Credit"] = pre_Dashboard_Credit.toDictionary()
		}
		if prepaid_XMAS_offer != nil{
			var dictionaryElements = [[String:Any]]()
			for prepaid_XMAS_offerElement in prepaid_XMAS_offer {
				dictionaryElements.append(prepaid_XMAS_offerElement.toDictionary())
			}
			dictionary["Prepaid_XMAS_offer"] = dictionaryElements
		}
		if request_Error_Scenario != nil{
			dictionary["Request_Error_Scenario"] = request_Error_Scenario.toDictionary()
		}
		if sharing != nil{
			dictionary["Sharing"] = sharing.toDictionary()
		}
		if termsnCond_Dash_Board != nil{
			dictionary["TermsnCond_Dash_Board"] = termsnCond_Dash_Board.toDictionary()
		}
		if voice_Of_Vodafone != nil{
			dictionary["Voice_Of_Vodafone"] = voice_Of_Vodafone.toDictionary()
		}
		if accountBlockList != nil{
			dictionary["accountBlockList"] = accountBlockList
		}
		if appTogglerTime != nil{
			dictionary["appTogglerTime"] = appTogglerTime
		}
		if applicationName != nil{
			dictionary["applicationName"] = applicationName
		}
		if channelName != nil{
			dictionary["channelName"] = channelName
		}
		if creditBonus != nil{
			dictionary["creditBonus"] = creditBonus
		}
		if fixed != nil{
			dictionary["fixed"] = fixed.toDictionary()
		}
		if loaderTimer != nil{
			dictionary["loaderTimer"] = loaderTimer
		}
		if walletSuppressToggle != nil{
			dictionary["walletSuppressToggle"] = walletSuppressToggle
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         default_Error_Scenario = aDecoder.decodeObject(forKey :"Default_Error_Scenario") as? [Default_Error_Scenario]
         error_Scenario_Unbilled = aDecoder.decodeObject(forKey :"Error_Scenario_Unbilled") as? [Error_Scenario_Unbilled]
         fixed_Dashboard = aDecoder.decodeObject(forKey: "Fixed_Dashboard") as? Fixed_Dashboard
         generic = aDecoder.decodeObject(forKey: "Generic") as? Generic
         generic_Error_Scenario = aDecoder.decodeObject(forKey :"Generic_Error_Scenario") as? [Generic_Error_Scenario]
         maintenance_Page = aDecoder.decodeObject(forKey: "Maintenance_Page") as? Maintenance_Page
         postPaid_DataUsage = aDecoder.decodeObject(forKey: "PostPaid_DataUsage") as? PostPaid_DataUsage
         postpaid_Dashbaord = aDecoder.decodeObject(forKey: "Postpaid_Dashbaord") as? Postpaid_Dashbaord
         pre_Dashboard_Credit = aDecoder.decodeObject(forKey: "Pre_Dashboard_Credit") as? Pre_Dashboard_Credit
         prepaid_XMAS_offer = aDecoder.decodeObject(forKey :"Prepaid_XMAS_offer") as? [Prepaid_XMAS_offer]
         request_Error_Scenario = aDecoder.decodeObject(forKey: "Request_Error_Scenario") as? Request_Error_Scenario
         sharing = aDecoder.decodeObject(forKey: "Sharing") as? Sharing
         termsnCond_Dash_Board = aDecoder.decodeObject(forKey: "TermsnCond_Dash_Board") as? TermsnCond_Dash_Board
         voice_Of_Vodafone = aDecoder.decodeObject(forKey: "Voice_Of_Vodafone") as? Voice_Of_Vodafone
         accountBlockList = aDecoder.decodeObject(forKey: "accountBlockList") as? [String]
         appTogglerTime = aDecoder.decodeObject(forKey: "appTogglerTime") as? Int
         applicationName = aDecoder.decodeObject(forKey: "applicationName") as? String
         channelName = aDecoder.decodeObject(forKey: "channelName") as? String
         creditBonus = aDecoder.decodeObject(forKey: "creditBonus") as? [String]
         fixed = aDecoder.decodeObject(forKey: "fixed") as? Fixed
         loaderTimer = aDecoder.decodeObject(forKey: "loaderTimer") as? Int
         walletSuppressToggle = aDecoder.decodeObject(forKey: "walletSuppressToggle") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if default_Error_Scenario != nil{
			aCoder.encode(default_Error_Scenario, forKey: "Default_Error_Scenario")
		}
		if error_Scenario_Unbilled != nil{
			aCoder.encode(error_Scenario_Unbilled, forKey: "Error_Scenario_Unbilled")
		}
		if fixed_Dashboard != nil{
			aCoder.encode(fixed_Dashboard, forKey: "Fixed_Dashboard")
		}
		if generic != nil{
			aCoder.encode(generic, forKey: "Generic")
		}
		if generic_Error_Scenario != nil{
			aCoder.encode(generic_Error_Scenario, forKey: "Generic_Error_Scenario")
		}
		if maintenance_Page != nil{
			aCoder.encode(maintenance_Page, forKey: "Maintenance_Page")
		}
		if postPaid_DataUsage != nil{
			aCoder.encode(postPaid_DataUsage, forKey: "PostPaid_DataUsage")
		}
		if postpaid_Dashbaord != nil{
			aCoder.encode(postpaid_Dashbaord, forKey: "Postpaid_Dashbaord")
		}
		if pre_Dashboard_Credit != nil{
			aCoder.encode(pre_Dashboard_Credit, forKey: "Pre_Dashboard_Credit")
		}
		if prepaid_XMAS_offer != nil{
			aCoder.encode(prepaid_XMAS_offer, forKey: "Prepaid_XMAS_offer")
		}
		if request_Error_Scenario != nil{
			aCoder.encode(request_Error_Scenario, forKey: "Request_Error_Scenario")
		}
		if sharing != nil{
			aCoder.encode(sharing, forKey: "Sharing")
		}
		if termsnCond_Dash_Board != nil{
			aCoder.encode(termsnCond_Dash_Board, forKey: "TermsnCond_Dash_Board")
		}
		if voice_Of_Vodafone != nil{
			aCoder.encode(voice_Of_Vodafone, forKey: "Voice_Of_Vodafone")
		}
		if accountBlockList != nil{
			aCoder.encode(accountBlockList, forKey: "accountBlockList")
		}
		if appTogglerTime != nil{
			aCoder.encode(appTogglerTime, forKey: "appTogglerTime")
		}
		if applicationName != nil{
			aCoder.encode(applicationName, forKey: "applicationName")
		}
		if channelName != nil{
			aCoder.encode(channelName, forKey: "channelName")
		}
		if creditBonus != nil{
			aCoder.encode(creditBonus, forKey: "creditBonus")
		}
		if fixed != nil{
			aCoder.encode(fixed, forKey: "fixed")
		}
		if loaderTimer != nil{
			aCoder.encode(loaderTimer, forKey: "loaderTimer")
		}
		if walletSuppressToggle != nil{
			aCoder.encode(walletSuppressToggle, forKey: "walletSuppressToggle")
		}

	}

}
