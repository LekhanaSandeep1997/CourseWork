//
//  Food.swift
//  CourseWork
//
//  Created by Lekhana on 1/28/23.
//

import Foundation
import Firebase

struct Food: Codable {
    var id: String = UUID().uuidString
    var name: String = ""
    var ingredients: String = ""
    var description: String = ""
    var nutritionlevel: String = ""
    var avatarPath: String = ""
    
}
