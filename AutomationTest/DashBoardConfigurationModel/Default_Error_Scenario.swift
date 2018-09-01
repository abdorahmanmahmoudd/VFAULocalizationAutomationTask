//
//	Default_Error_Scenario.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Default_Error_Scenario : NSObject, NSCoding{

	var buttons : String!
	var message : String!
	var title : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		buttons = dictionary["buttons"] as? String
		message = dictionary["message"] as? String
		title = dictionary["title"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if buttons != nil{
			dictionary["buttons"] = buttons
		}
		if message != nil{
			dictionary["message"] = message
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
         buttons = aDecoder.decodeObject(forKey: "buttons") as? String
         message = aDecoder.decodeObject(forKey: "message") as? String
         title = aDecoder.decodeObject(forKey: "title") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if buttons != nil{
			aCoder.encode(buttons, forKey: "buttons")
		}
		if message != nil{
			aCoder.encode(message, forKey: "message")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}

	}

}