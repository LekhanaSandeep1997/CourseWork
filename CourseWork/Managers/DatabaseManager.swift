//
//  DatabaseManager.swift
//  CourseWork
//
//  Created by Lekhana on 1/29/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift
import FirebaseFirestoreCombineSwift
import Combine

class DatabaseManager {
    static let shared = DatabaseManager()
    
    let db = Firestore.firestore()
    let usersPath: String = "users"
    let tweetsPath: String = "food"
    
    
    func collectionUsers(add food: Food) -> AnyPublisher<Bool, Error> {
        let appuser = Food(from: food)
        return db.collection(usersPath).document(appuser.id).setData(from: appuser)
            .map { _ in return true }
            .eraseToAnyPublisher()
    }
    func collectionUsers(retreive id: String) -> AnyPublisher<Food, Error> {
        db.collection(usersPath).document(id).getDocument()
            .tryMap {  try $0.data(as: Food.self) }
            .eraseToAnyPublisher()
    }
    
    func collectionUsers(updateFields: [String: Any], for id: String) -> AnyPublisher<Bool, Error> {
        db.collection(usersPath).document(id).updateData(updateFields)
            .map{ _ in true }
            .eraseToAnyPublisher()
    }
    
    func collectionTweets(dispatch tweet: Food) -> AnyPublisher<Bool, Error> {
        db.collection(tweetsPath).document(tweet.id).setData(from: food)
            .map{ _ in true }
            .eraseToAnyPublisher()
    }
    
    func collectionTweets(retrieveTweets forUserID: String) -> AnyPublisher<[Food], Error>{
        db.collection(tweetsPath).whereField("authorID", isEqualTo: forUserID)
            .getDocuments()
            .tryMap(\.documents)
            .tryMap{ snapshots in
                try snapshots.map({
                    try $0.data(as: Food.self)
                })
            }
            .eraseToAnyPublisher()
    }
}
    
