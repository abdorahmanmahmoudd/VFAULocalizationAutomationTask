//
//	My_Credit_Section.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class My_Credit_Section : NSObject, NSCoding{

	var maxLimit : String!
	var myCreditButton : String!
	var noCredit : String!
	var purchaseHistory : String!
	var usedCreditMsg : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		maxLimit = dictionary["maxLimit"] as? String
		myCreditButton = dictionary["myCreditButton"] as? String
		noCredit = dictionary["noCredit"] as? String
		purchaseHistory = dictionary["purchaseHistory"] as? String
		usedCreditMsg = dictionary["usedCreditMsg"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if maxLimit != nil{
			dictionary["maxLimit"] = maxLimit
		}
		if myCreditButton != nil{
			dictionary["myCreditButton"] = myCreditButton
		}
		if noCredit != nil{
			dictionary["noCredit"] = noCredit
		}
		if purchaseHistory != nil{
			dictionary["purchaseHistory"] = purchaseHistory
		}
		if usedCreditMsg != nil{
			dictionary["usedCreditMsg"] = usedCreditMsg
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         maxLimit = aDecoder.decodeObject(forKey: "maxLimit") as? String
         myCreditButton = aDecoder.decodeObject(forKey: "myCreditButton") as? String
         noCredit = aDecoder.decodeObject(forKey: "noCredit") as? String
         purchaseHistory = aDecoder.decodeObject(forKey: "purchaseHistory") as? String
         usedCreditMsg = aDecoder.decodeObject(forKey: "usedCreditMsg") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if maxLimit != nil{
			aCoder.encode(maxLimit, forKey: "maxLimit")
		}
		if myCreditButton != nil{
			aCoder.encode(myCreditButton, forKey: "myCreditButton")
		}
		if noCredit != nil{
			aCoder.encode(noCredit, forKey: "noCredit")
		}
		if purchaseHistory != nil{
			aCoder.encode(purchaseHistory, forKey: "purchaseHistory")
		}
		if usedCreditMsg != nil{
			aCoder.encode(usedCreditMsg, forKey: "usedCreditMsg")
		}

	}

}