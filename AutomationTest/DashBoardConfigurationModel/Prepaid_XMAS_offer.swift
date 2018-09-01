//
//	Prepaid_XMAS_offer.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Prepaid_XMAS_offer : NSObject, NSCoding{

	var expiryTime : String!
	var name : String!
	var offerCount : Int!
	var offerDetails : String!
	var offerEndDesc : String!
	var offerEndDescCompleted : String!
	var offerEndTerms : String!
	var offerID : String!
	var overlayDescTitle : String!
	var overlayMsg : String!
	var overlayTerms : String!
	var overlayTermsLink : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		expiryTime = dictionary["expiryTime"] as? String
		name = dictionary["name"] as? String
		offerCount = dictionary["offerCount"] as? Int
		offerDetails = dictionary["offerDetails"] as? String
		offerEndDesc = dictionary["offerEndDesc"] as? String
		offerEndDescCompleted = dictionary["offerEndDescCompleted"] as? String
		offerEndTerms = dictionary["offerEndTerms"] as? String
		offerID = dictionary["offerID"] as? String
		overlayDescTitle = dictionary["overlayDescTitle"] as? String
		overlayMsg = dictionary["overlayMsg"] as? String
		overlayTerms = dictionary["overlayTerms"] as? String
		overlayTermsLink = dictionary["overlayTermsLink"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if expiryTime != nil{
			dictionary["expiryTime"] = expiryTime
		}
		if name != nil{
			dictionary["name"] = name
		}
		if offerCount != nil{
			dictionary["offerCount"] = offerCount
		}
		if offerDetails != nil{
			dictionary["offerDetails"] = offerDetails
		}
		if offerEndDesc != nil{
			dictionary["offerEndDesc"] = offerEndDesc
		}
		if offerEndDescCompleted != nil{
			dictionary["offerEndDescCompleted"] = offerEndDescCompleted
		}
		if offerEndTerms != nil{
			dictionary["offerEndTerms"] = offerEndTerms
		}
		if offerID != nil{
			dictionary["offerID"] = offerID
		}
		if overlayDescTitle != nil{
			dictionary["overlayDescTitle"] = overlayDescTitle
		}
		if overlayMsg != nil{
			dictionary["overlayMsg"] = overlayMsg
		}
		if overlayTerms != nil{
			dictionary["overlayTerms"] = overlayTerms
		}
		if overlayTermsLink != nil{
			dictionary["overlayTermsLink"] = overlayTermsLink
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         expiryTime = aDecoder.decodeObject(forKey: "expiryTime") as? String
         name = aDecoder.decodeObject(forKey: "name") as? String
         offerCount = aDecoder.decodeObject(forKey: "offerCount") as? Int
         offerDetails = aDecoder.decodeObject(forKey: "offerDetails") as? String
         offerEndDesc = aDecoder.decodeObject(forKey: "offerEndDesc") as? String
         offerEndDescCompleted = aDecoder.decodeObject(forKey: "offerEndDescCompleted") as? String
         offerEndTerms = aDecoder.decodeObject(forKey: "offerEndTerms") as? String
         offerID = aDecoder.decodeObject(forKey: "offerID") as? String
         overlayDescTitle = aDecoder.decodeObject(forKey: "overlayDescTitle") as? String
         overlayMsg = aDecoder.decodeObject(forKey: "overlayMsg") as? String
         overlayTerms = aDecoder.decodeObject(forKey: "overlayTerms") as? String
         overlayTermsLink = aDecoder.decodeObject(forKey: "overlayTermsLink") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if expiryTime != nil{
			aCoder.encode(expiryTime, forKey: "expiryTime")
		}
		if name != nil{
			aCoder.encode(name, forKey: "name")
		}
		if offerCount != nil{
			aCoder.encode(offerCount, forKey: "offerCount")
		}
		if offerDetails != nil{
			aCoder.encode(offerDetails, forKey: "offerDetails")
		}
		if offerEndDesc != nil{
			aCoder.encode(offerEndDesc, forKey: "offerEndDesc")
		}
		if offerEndDescCompleted != nil{
			aCoder.encode(offerEndDescCompleted, forKey: "offerEndDescCompleted")
		}
		if offerEndTerms != nil{
			aCoder.encode(offerEndTerms, forKey: "offerEndTerms")
		}
		if offerID != nil{
			aCoder.encode(offerID, forKey: "offerID")
		}
		if overlayDescTitle != nil{
			aCoder.encode(overlayDescTitle, forKey: "overlayDescTitle")
		}
		if overlayMsg != nil{
			aCoder.encode(overlayMsg, forKey: "overlayMsg")
		}
		if overlayTerms != nil{
			aCoder.encode(overlayTerms, forKey: "overlayTerms")
		}
		if overlayTermsLink != nil{
			aCoder.encode(overlayTermsLink, forKey: "overlayTermsLink")
		}

	}

}