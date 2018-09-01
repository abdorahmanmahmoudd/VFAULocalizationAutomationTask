//
//	Plan_Detail.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Plan_Detail : NSObject, NSCoding{

	var balance : String!
	var noPlanInclusions : String!
	var prepaidServices : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		balance = dictionary["balance"] as? String
		noPlanInclusions = dictionary["noPlanInclusions"] as? String
		prepaidServices = dictionary["prepaidServices"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if balance != nil{
			dictionary["balance"] = balance
		}
		if noPlanInclusions != nil{
			dictionary["noPlanInclusions"] = noPlanInclusions
		}
		if prepaidServices != nil{
			dictionary["prepaidServices"] = prepaidServices
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         balance = aDecoder.decodeObject(forKey: "balance") as? String
         noPlanInclusions = aDecoder.decodeObject(forKey: "noPlanInclusions") as? String
         prepaidServices = aDecoder.decodeObject(forKey: "prepaidServices") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if balance != nil{
			aCoder.encode(balance, forKey: "balance")
		}
		if noPlanInclusions != nil{
			aCoder.encode(noPlanInclusions, forKey: "noPlanInclusions")
		}
		if prepaidServices != nil{
			aCoder.encode(prepaidServices, forKey: "prepaidServices")
		}

	}

}