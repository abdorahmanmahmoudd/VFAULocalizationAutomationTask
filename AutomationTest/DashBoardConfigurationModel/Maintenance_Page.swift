//
//	Maintenance_Page.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Maintenance_Page : NSObject, NSCoding{

	var maintenanceHeading : String!
	var tryLaterMsg : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		maintenanceHeading = dictionary["maintenanceHeading"] as? String
		tryLaterMsg = dictionary["tryLaterMsg"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if maintenanceHeading != nil{
			dictionary["maintenanceHeading"] = maintenanceHeading
		}
		if tryLaterMsg != nil{
			dictionary["tryLaterMsg"] = tryLaterMsg
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         maintenanceHeading = aDecoder.decodeObject(forKey: "maintenanceHeading") as? String
         tryLaterMsg = aDecoder.decodeObject(forKey: "tryLaterMsg") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if maintenanceHeading != nil{
			aCoder.encode(maintenanceHeading, forKey: "maintenanceHeading")
		}
		if tryLaterMsg != nil{
			aCoder.encode(tryLaterMsg, forKey: "tryLaterMsg")
		}

	}

}