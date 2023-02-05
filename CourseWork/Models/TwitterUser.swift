//
//  TwitterUser.swift
//  CourseWork
//
//  Created by Lekhana on 1/29/23.
//

import Foundation
import Firebase

struct TwitterUser: Codable {

    let id: String
    var name: String = ""
    var username: String = ""
    var followersCount: Int = 0
    var followingCount: Int = 0
    var createdOn: Date = Date()
    var bio: String = ""
    var avatarPath: String = ""
    var isUserOnboarded: Bool = false

    init(from user: User) {
        self.id = user.uid
    }
}
