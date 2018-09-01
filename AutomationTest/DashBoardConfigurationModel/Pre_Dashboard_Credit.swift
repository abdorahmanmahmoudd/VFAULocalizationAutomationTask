//
//	Pre_Dashboard_Credit.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Pre_Dashboard_Credit : NSObject, NSCoding{

	var my_Credit_Section : My_Credit_Section!
	var pin_Error_Handling : Pin_Error_Handling!
	var plan_Details : Plan_Detail!
	var beta : String!
	var button : String!
	var buyaddonBtn : String!
	var descriptionWithMymix : String!
	var firstUserPlan : String!
	var firstUserService : String!
	var lastInfo : String!
	var lastRechargePrepaid : String!
	var myCredit : String!
	var myCreditIcon : String!
	var needHelp : String!
	var planInclusion : String!
	var rechargeBtn : String!
	var subTitle : String!
	var title : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let my_Credit_SectionData = dictionary["My_Credit_Section"] as? [String:Any]{
			my_Credit_Section = My_Credit_Section(fromDictionary: my_Credit_SectionData)
		}
		if let pin_Error_HandlingData = dictionary["Pin_Error_Handling"] as? [String:Any]{
			pin_Error_Handling = Pin_Error_Handling(fromDictionary: pin_Error_HandlingData)
		}
		if let plan_DetailsData = dictionary["Plan_Details"] as? [String:Any]{
			plan_Details = Plan_Detail(fromDictionary: plan_DetailsData)
		}
		beta = dictionary["beta"] as? String
		button = dictionary["button"] as? String
		buyaddonBtn = dictionary["buyaddonBtn"] as? String
		descriptionWithMymix = dictionary["descriptionWithMymix"] as? String
		firstUserPlan = dictionary["firstUserPlan"] as? String
		firstUserService = dictionary["firstUserService"] as? String
		lastInfo = dictionary["lastInfo"] as? String
		lastRechargePrepaid = dictionary["lastRechargePrepaid"] as? String
		myCredit = dictionary["myCredit"] as? String
		myCreditIcon = dictionary["myCreditIcon"] as? String
		needHelp = dictionary["needHelp"] as? String
		planInclusion = dictionary["planInclusion"] as? String
		rechargeBtn = dictionary["rechargeBtn"] as? String
		subTitle = dictionary["subTitle"] as? String
		title = dictionary["title"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if my_Credit_Section != nil{
			dictionary["My_Credit_Section"] = my_Credit_Section.toDictionary()
		}
		if pin_Error_Handling != nil{
			dictionary["Pin_Error_Handling"] = pin_Error_Handling.toDictionary()
		}
		if plan_Details != nil{
			dictionary["Plan_Details"] = plan_Details.toDictionary()
		}
		if beta != nil{
			dictionary["beta"] = beta
		}
		if button != nil{
			dictionary["button"] = button
		}
		if buyaddonBtn != nil{
			dictionary["buyaddonBtn"] = buyaddonBtn
		}
		if descriptionWithMymix != nil{
			dictionary["descriptionWithMymix"] = descriptionWithMymix
		}
		if firstUserPlan != nil{
			dictionary["firstUserPlan"] = firstUserPlan
		}
		if firstUserService != nil{
			dictionary["firstUserService"] = firstUserService
		}
		if lastInfo != nil{
			dictionary["lastInfo"] = lastInfo
		}
		if lastRechargePrepaid != nil{
			dictionary["lastRechargePrepaid"] = lastRechargePrepaid
		}
		if myCredit != nil{
			dictionary["myCredit"] = myCredit
		}
		if myCreditIcon != nil{
			dictionary["myCreditIcon"] = myCreditIcon
		}
		if needHelp != nil{
			dictionary["needHelp"] = needHelp
		}
		if planInclusion != nil{
			dictionary["planInclusion"] = planInclusion
		}
		if rechargeBtn != nil{
			dictionary["rechargeBtn"] = rechargeBtn
		}
		if subTitle != nil{
			dictionary["subTitle"] = subTitle
		}
		if title != nil{
			dictionary["title"] = title
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         my_Credit_Section = aDecoder.decodeObject(forKey: "My_Credit_Section") as? My_Credit_Section
         pin_Error_Handling = aDecoder.decodeObject(forKey: "Pin_Error_Handling") as? Pin_Error_Handling
         plan_Details = aDecoder.decodeObject(forKey: "Plan_Details") as? Plan_Detail
         beta = aDecoder.decodeObject(forKey: "beta") as? String
         button = aDecoder.decodeObject(forKey: "button") as? String
         buyaddonBtn = aDecoder.decodeObject(forKey: "buyaddonBtn") as? String
         descriptionWithMymix = aDecoder.decodeObject(forKey: "descriptionWithMymix") as? String
         firstUserPlan = aDecoder.decodeObject(forKey: "firstUserPlan") as? String
         firstUserService = aDecoder.decodeObject(forKey: "firstUserService") as? String
         lastInfo = aDecoder.decodeObject(forKey: "lastInfo") as? String
         lastRechargePrepaid = aDecoder.decodeObject(forKey: "lastRechargePrepaid") as? String
         myCredit = aDecoder.decodeObject(forKey: "myCredit") as? String
         myCreditIcon = aDecoder.decodeObject(forKey: "myCreditIcon") as? String
         needHelp = aDecoder.decodeObject(forKey: "needHelp") as? String
         planInclusion = aDecoder.decodeObject(forKey: "planInclusion") as? String
         rechargeBtn = aDecoder.decodeObject(forKey: "rechargeBtn") as? String
         subTitle = aDecoder.decodeObject(forKey: "subTitle") as? String
         title = aDecoder.decodeObject(forKey: "title") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if my_Credit_Section != nil{
			aCoder.encode(my_Credit_Section, forKey: "My_Credit_Section")
		}
		if pin_Error_Handling != nil{
			aCoder.encode(pin_Error_Handling, forKey: "Pin_Error_Handling")
		}
		if plan_Details != nil{
			aCoder.encode(plan_Details, forKey: "Plan_Details")
		}
		if beta != nil{
			aCoder.encode(beta, forKey: "beta")
		}
		if button != nil{
			aCoder.encode(button, forKey: "button")
		}
		if buyaddonBtn != nil{
			aCoder.encode(buyaddonBtn, forKey: "buyaddonBtn")
		}
		if descriptionWithMymix != nil{
			aCoder.encode(descriptionWithMymix, forKey: "descriptionWithMymix")
		}
		if firstUserPlan != nil{
			aCoder.encode(firstUserPlan, forKey: "firstUserPlan")
		}
		if firstUserService != nil{
			aCoder.encode(firstUserService, forKey: "firstUserService")
		}
		if lastInfo != nil{
			aCoder.encode(lastInfo, forKey: "lastInfo")
		}
		if lastRechargePrepaid != nil{
			aCoder.encode(lastRechargePrepaid, forKey: "lastRechargePrepaid")
		}
		if myCredit != nil{
			aCoder.encode(myCredit, forKey: "myCredit")
		}
		if myCreditIcon != nil{
			aCoder.encode(myCreditIcon, forKey: "myCreditIcon")
		}
		if needHelp != nil{
			aCoder.encode(needHelp, forKey: "needHelp")
		}
		if planInclusion != nil{
			aCoder.encode(planInclusion, forKey: "planInclusion")
		}
		if rechargeBtn != nil{
			aCoder.encode(rechargeBtn, forKey: "rechargeBtn")
		}
		if subTitle != nil{
			aCoder.encode(subTitle, forKey: "subTitle")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}

	}

}