//
//	TermsnCond_Dash_Board.swift
//
//	Create by Abdorahman Mahmoud on 31/8/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class TermsnCond_Dash_Board : NSObject, NSCoding{

	var dashBoard : [DashBoard]!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		dashBoard = [DashBoard]()
		if let dashBoardArray = dictionary["DashBoard"] as? [[String:Any]]{
			for dic in dashBoardArray{
				let value = DashBoard(fromDictionary: dic)
				dashBoard.append(value)
			}
		}
	}

	/**
	 * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> [String:Any]
	{
		var dictionary = [String:Any]()
		if dashBoard != nil{
			var dictionaryElements = [[String:Any]]()
			for dashBoardElement in dashBoard {
				dictionaryElements.append(dashBoardElement.toDictionary())
			}
			dictionary["DashBoard"] = dictionaryElements
		}
		return dictionary
	}

    /**
    * NSCoding required initializer.
    * Fills the data from the passed decoder
    */
    @objc required init(coder aDecoder: NSCoder)
	{
         dashBoard = aDecoder.decodeObject(forKey :"DashBoard") as? [DashBoard]

	}

    /**
    * NSCoding required method.
    * Encodes mode properties into the decoder
    */
    @objc func encode(with aCoder: NSCoder)
	{
		if dashBoard != nil{
			aCoder.encode(dashBoard, forKey: "DashBoard")
		}

	}

}