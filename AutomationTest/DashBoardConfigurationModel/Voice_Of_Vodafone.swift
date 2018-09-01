//
//	Voice_Of_Vodafone.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Voice_Of_Vodafone : NSObject, NSCoding{

	var gA : String!
	var gE : String!
	var gM : String!
	var noOffers : String!
	var subMessage : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		gA = dictionary["GA"] as? String
		gE = dictionary["GE"] as? String
		gM = dictionary["GM"] as? String
		noOffers = dictionary["noOffers"] as? String
		subMessage = dictionary["subMessage"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if gA != nil{
			dictionary["GA"] = gA
		}
		if gE != nil{
			dictionary["GE"] = gE
		}
		if gM != nil{
			dictionary["GM"] = gM
		}
		if noOffers != nil{
			dictionary["noOffers"] = noOffers
		}
		if subMessage != nil{
			dictionary["subMessage"] = subMessage
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         gA = aDecoder.decodeObject(forKey: "GA") as? String
         gE = aDecoder.decodeObject(forKey: "GE") as? String
         gM = aDecoder.decodeObject(forKey: "GM") as? String
         noOffers = aDecoder.decodeObject(forKey: "noOffers") as? String
         subMessage = aDecoder.decodeObject(forKey: "subMessage") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if gA != nil{
			aCoder.encode(gA, forKey: "GA")
		}
		if gE != nil{
			aCoder.encode(gE, forKey: "GE")
		}
		if gM != nil{
			aCoder.encode(gM, forKey: "GM")
		}
		if noOffers != nil{
			aCoder.encode(noOffers, forKey: "noOffers")
		}
		if subMessage != nil{
			aCoder.encode(subMessage, forKey: "subMessage")
		}

	}

}