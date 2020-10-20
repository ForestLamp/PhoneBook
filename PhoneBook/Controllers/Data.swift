//
//  data.swift
//  PhoneBook
//
//  Created by a_sid on 17.10.2020.
//

import Foundation


struct People : Decodable {
    let id, name, phone: String
    let height: Double
    let biography, temperament: String
    let educationPeriod: EducationPeriod
}

struct EducationPeriod: Codable {
    let start, end: String
}

// 1. URLSession
// 2. Alamofire

