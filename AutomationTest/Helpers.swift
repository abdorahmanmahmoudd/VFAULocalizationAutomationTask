//
//  Helpers.swift
//  AutomationTest
//
//  Created by mac on 8/31/18.
//  Copyright © 2018 Abdo. All rights reserved.
//

import Foundation

#if !swift(>=4.2)
public protocol CaseIterable {
    associatedtype AllCases: Collection where AllCases.Element == Self
    static var allCases: AllCases { get }
}
extension CaseIterable where Self: Hashable {
    static var allCases: [Self] {
        return [Self](AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            var first: Self?
            return AnyIterator {
                let current = withUnsafeBytes(of: &raw) { $0.load(as: Self.self) }
                if raw == 0 {
                    first = current
                } else if current == first {
                    return nil
                }
                raw += 1
                return current
            }
        })
    }
}
#endif

extension Encodable {
    func asDictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(with: data, options: []) as? [String: AnyObject] else {
            throw NSError()
        }
        return dictionary
    }
}

extension String {
    mutating func attributePath() -> String{
        self = self.replacingOccurrences(of: ".", with: "?.") //ab?.cd[0]?.ef
        self = self.replacingOccurrences(of: "[", with: "?[") //ab?.cd?[0]?.ef
        self = self.replacingOccurrences(of: "]?", with: "]") //ab?.cd?[0].ef
        return self
    }
}
