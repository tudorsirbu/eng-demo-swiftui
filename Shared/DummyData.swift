//
//  DummyData.swift
//  EngDemoSwiftUI
//
//  Created by Tudor Sirbu on 13/07/2021.
//

import Foundation

struct DummyData {
    
    static let user = User(firstName: "Pete", lastName: "Tutorful")
    static let booking = Booking(startTime: Date(), student: user, subject: "Spanish (Beginner)", price: 0)
}
