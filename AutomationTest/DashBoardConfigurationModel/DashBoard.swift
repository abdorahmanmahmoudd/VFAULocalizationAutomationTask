//
//	DashBoard.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class DashBoard : NSObject, NSCoding{

	var content1 : String!
	var content2 : String!
	var type : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		content1 = dictionary["content1"] as? String
		content2 = dictionary["content2"] as? String
		type = dictionary["type"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if content1 != nil{
			dictionary["content1"] = content1
		}
		if content2 != nil{
			dictionary["content2"] = content2
		}
		if type != nil{
			dictionary["type"] = type
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         content1 = aDecoder.decodeObject(forKey: "content1") as? String
         content2 = aDecoder.decodeObject(forKey: "content2") as? String
         type = aDecoder.decodeObject(forKey: "type") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if content1 != nil{
			aCoder.encode(content1, forKey: "content1")
		}
		if content2 != nil{
			aCoder.encode(content2, forKey: "content2")
		}
		if type != nil{
			aCoder.encode(type, forKey: "type")
		}

	}

}