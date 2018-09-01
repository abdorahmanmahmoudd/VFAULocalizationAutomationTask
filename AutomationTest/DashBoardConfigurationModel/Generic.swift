//
//	Generic.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Generic : NSObject, NSCoding{

	var dOLLAR : String!
	var infinite : String!
	var mBBText : String!
	var nBNText : String!
	var remaining : String!
	var uNIT : String!
	var errorTitle : String!
	var expires : String!
	var internationalUrl : String!
	var plansUrl : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		dOLLAR = dictionary["DOLLAR"] as? String
		infinite = dictionary["Infinite"] as? String
		mBBText = dictionary["MBBText"] as? String
		nBNText = dictionary["NBNText"] as? String
		remaining = dictionary["Remaining"] as? String
		uNIT = dictionary["UNIT"] as? String
		errorTitle = dictionary["errorTitle"] as? String
		expires = dictionary["expires"] as? String
		internationalUrl = dictionary["internationalUrl"] as? String
		plansUrl = dictionary["plansUrl"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if dOLLAR != nil{
			dictionary["DOLLAR"] = dOLLAR
		}
		if infinite != nil{
			dictionary["Infinite"] = infinite
		}
		if mBBText != nil{
			dictionary["MBBText"] = mBBText
		}
		if nBNText != nil{
			dictionary["NBNText"] = nBNText
		}
		if remaining != nil{
			dictionary["Remaining"] = remaining
		}
		if uNIT != nil{
			dictionary["UNIT"] = uNIT
		}
		if errorTitle != nil{
			dictionary["errorTitle"] = errorTitle
		}
		if expires != nil{
			dictionary["expires"] = expires
		}
		if internationalUrl != nil{
			dictionary["internationalUrl"] = internationalUrl
		}
		if plansUrl != nil{
			dictionary["plansUrl"] = plansUrl
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         dOLLAR = aDecoder.decodeObject(forKey: "DOLLAR") as? String
         infinite = aDecoder.decodeObject(forKey: "Infinite") as? String
         mBBText = aDecoder.decodeObject(forKey: "MBBText") as? String
         nBNText = aDecoder.decodeObject(forKey: "NBNText") as? String
         remaining = aDecoder.decodeObject(forKey: "Remaining") as? String
         uNIT = aDecoder.decodeObject(forKey: "UNIT") as? String
         errorTitle = aDecoder.decodeObject(forKey: "errorTitle") as? String
         expires = aDecoder.decodeObject(forKey: "expires") as? String
         internationalUrl = aDecoder.decodeObject(forKey: "internationalUrl") as? String
         plansUrl = aDecoder.decodeObject(forKey: "plansUrl") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if dOLLAR != nil{
			aCoder.encode(dOLLAR, forKey: "DOLLAR")
		}
		if infinite != nil{
			aCoder.encode(infinite, forKey: "Infinite")
		}
		if mBBText != nil{
			aCoder.encode(mBBText, forKey: "MBBText")
		}
		if nBNText != nil{
			aCoder.encode(nBNText, forKey: "NBNText")
		}
		if remaining != nil{
			aCoder.encode(remaining, forKey: "Remaining")
		}
		if uNIT != nil{
			aCoder.encode(uNIT, forKey: "UNIT")
		}
		if errorTitle != nil{
			aCoder.encode(errorTitle, forKey: "errorTitle")
		}
		if expires != nil{
			aCoder.encode(expires, forKey: "expires")
		}
		if internationalUrl != nil{
			aCoder.encode(internationalUrl, forKey: "internationalUrl")
		}
		if plansUrl != nil{
			aCoder.encode(plansUrl, forKey: "plansUrl")
		}

	}

}