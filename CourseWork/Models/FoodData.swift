//
//  FoodData.swift
//  CourseWork
//
//  Created by Lekhana on 2/4/23.
//

import Foundation

struct FoodData : Codable{
    
    var id = UUID().uuidString
    var name: String = ""
    var sugarLevel: String = ""
    var saltLevel: String = ""
    var caloriesLevel: String = ""
    var fatLevel: String = ""
    var createdOn: Date = Date()
    var bio: String = ""
    var avatarPath: String = ""
}
