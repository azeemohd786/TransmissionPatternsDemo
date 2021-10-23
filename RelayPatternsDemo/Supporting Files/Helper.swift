//
//  Helper.swift
//  RelayPatternsDemo
//
//  Created by Mohammed Azeem Azeez on 23/10/2021.
//

import Foundation
// MARK:- Delegates
protocol SendDataDelegateProtocol {
    func sendDataToViewController(myData: String)
}

// MARK:- Notification Center
let notification = NotificationCenter.default
extension Notification.Name {
    static let postBadge = Notification.Name("postBadge")
}

// MARK:- Key-Valued-Observation
@objc class Person: NSObject {
    @objc dynamic var name = "Azeem"
}

let person = Person()
