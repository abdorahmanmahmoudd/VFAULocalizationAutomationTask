//
//	Pin_Error_Handling.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Pin_Error_Handling : NSObject, NSCoding{

	var goDashboardBtn : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		goDashboardBtn = dictionary["goDashboardBtn"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if goDashboardBtn != nil{
			dictionary["goDashboardBtn"] = goDashboardBtn
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         goDashboardBtn = aDecoder.decodeObject(forKey: "goDashboardBtn") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if goDashboardBtn != nil{
			aCoder.encode(goDashboardBtn, forKey: "goDashboardBtn")
		}

	}

}