//
//	Request_Error_Scenario.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Request_Error_Scenario : NSObject, NSCoding{

	var forbidden_title : String!
	var page_not_found_dashboard_button : String!
	var page_not_found_go_back_button : String!
	var page_not_found_message : String!
	var page_not_found_title : String!
	var unauthorised_login_button : String!
	var unauthorised_page_message : String!
	var unauthorised_page_title : String!
	var unauthorised_vodafone_button : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		forbidden_title = dictionary["forbidden_title"] as? String
		page_not_found_dashboard_button = dictionary["page_not_found_dashboard_button"] as? String
		page_not_found_go_back_button = dictionary["page_not_found_go_back_button"] as? String
		page_not_found_message = dictionary["page_not_found_message"] as? String
		page_not_found_title = dictionary["page_not_found_title"] as? String
		unauthorised_login_button = dictionary["unauthorised_login_button"] as? String
		unauthorised_page_message = dictionary["unauthorised_page_message"] as? String
		unauthorised_page_title = dictionary["unauthorised_page_title"] as? String
		unauthorised_vodafone_button = dictionary["unauthorised_vodafone_button"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if forbidden_title != nil{
			dictionary["forbidden_title"] = forbidden_title
		}
		if page_not_found_dashboard_button != nil{
			dictionary["page_not_found_dashboard_button"] = page_not_found_dashboard_button
		}
		if page_not_found_go_back_button != nil{
			dictionary["page_not_found_go_back_button"] = page_not_found_go_back_button
		}
		if page_not_found_message != nil{
			dictionary["page_not_found_message"] = page_not_found_message
		}
		if page_not_found_title != nil{
			dictionary["page_not_found_title"] = page_not_found_title
		}
		if unauthorised_login_button != nil{
			dictionary["unauthorised_login_button"] = unauthorised_login_button
		}
		if unauthorised_page_message != nil{
			dictionary["unauthorised_page_message"] = unauthorised_page_message
		}
		if unauthorised_page_title != nil{
			dictionary["unauthorised_page_title"] = unauthorised_page_title
		}
		if unauthorised_vodafone_button != nil{
			dictionary["unauthorised_vodafone_button"] = unauthorised_vodafone_button
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         forbidden_title = aDecoder.decodeObject(forKey: "forbidden_title") as? String
         page_not_found_dashboard_button = aDecoder.decodeObject(forKey: "page_not_found_dashboard_button") as? String
         page_not_found_go_back_button = aDecoder.decodeObject(forKey: "page_not_found_go_back_button") as? String
         page_not_found_message = aDecoder.decodeObject(forKey: "page_not_found_message") as? String
         page_not_found_title = aDecoder.decodeObject(forKey: "page_not_found_title") as? String
         unauthorised_login_button = aDecoder.decodeObject(forKey: "unauthorised_login_button") as? String
         unauthorised_page_message = aDecoder.decodeObject(forKey: "unauthorised_page_message") as? String
         unauthorised_page_title = aDecoder.decodeObject(forKey: "unauthorised_page_title") as? String
         unauthorised_vodafone_button = aDecoder.decodeObject(forKey: "unauthorised_vodafone_button") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if forbidden_title != nil{
			aCoder.encode(forbidden_title, forKey: "forbidden_title")
		}
		if page_not_found_dashboard_button != nil{
			aCoder.encode(page_not_found_dashboard_button, forKey: "page_not_found_dashboard_button")
		}
		if page_not_found_go_back_button != nil{
			aCoder.encode(page_not_found_go_back_button, forKey: "page_not_found_go_back_button")
		}
		if page_not_found_message != nil{
			aCoder.encode(page_not_found_message, forKey: "page_not_found_message")
		}
		if page_not_found_title != nil{
			aCoder.encode(page_not_found_title, forKey: "page_not_found_title")
		}
		if unauthorised_login_button != nil{
			aCoder.encode(unauthorised_login_button, forKey: "unauthorised_login_button")
		}
		if unauthorised_page_message != nil{
			aCoder.encode(unauthorised_page_message, forKey: "unauthorised_page_message")
		}
		if unauthorised_page_title != nil{
			aCoder.encode(unauthorised_page_title, forKey: "unauthorised_page_title")
		}
		if unauthorised_vodafone_button != nil{
			aCoder.encode(unauthorised_vodafone_button, forKey: "unauthorised_vodafone_button")
		}

	}

}