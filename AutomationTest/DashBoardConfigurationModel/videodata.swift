//
//	videodata.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Videodata : NSObject, NSCoding{

	var duration : String!
	var poster : String!
	var sources : [source]!
	var title : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		duration = dictionary["duration"] as? String
		poster = dictionary["poster"] as? String
		sources = [source]()
		if let sourcesArray = dictionary["sources"] as? [[String:Any]]{
			for dic in sourcesArray{
				let value = source(fromDictionary: dic)
				sources.append(value)
			}
		}
		title = dictionary["title"] as? String
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if duration != nil{
			dictionary["duration"] = duration
		}
		if poster != nil{
			dictionary["poster"] = poster
		}
		if sources != nil{
			var dictionaryElements = [[String:Any]]()
			for sourcesElement in sources {
				dictionaryElements.append(sourcesElement.toDictionary())
			}
			dictionary["sources"] = dictionaryElements
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
         duration = aDecoder.decodeObject(forKey: "duration") as? String
         poster = aDecoder.decodeObject(forKey: "poster") as? String
         sources = aDecoder.decodeObject(forKey :"sources") as? [source]
         title = aDecoder.decodeObject(forKey: "title") as? String

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if duration != nil{
			aCoder.encode(duration, forKey: "duration")
		}
		if poster != nil{
			aCoder.encode(poster, forKey: "poster")
		}
		if sources != nil{
			aCoder.encode(sources, forKey: "sources")
		}
		if title != nil{
			aCoder.encode(title, forKey: "title")
		}

	}

}
