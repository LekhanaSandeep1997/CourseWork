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
    let tweetPath: String = "tweets"
    let productPath: String = "food"
        
    func collectionUsers(add user: User) -> AnyPublisher<Bool, Error> {
     let twitterUser = TwitterUser(from: user)
     return Firestore.firestore().collection(usersPath).document(twitterUser.id).setData(from: twitterUser)
            .map{ _ in
                return true}
            .eraseToAnyPublisher()
    }
        
    func collectionUsers(retreive id:String) -> AnyPublisher<TwitterUser, Error> {
        db.collection(usersPath).document(id).getDocument()
            .tryMap{
                try $0.data(as: TwitterUser.self)
            }
            .eraseToAnyPublisher()
    }
        
        func collectionUsers(updateFields: [String: Any], for id: String) -> AnyPublisher<Bool,Error>{
            db.collection(usersPath).document(id).updateData(updateFields)
                .map{ _ in true }
                .eraseToAnyPublisher()
        }
        
        func collectionProduct(dispatch product: FoodData) -> AnyPublisher <Bool, Error> {
            db.collection(productPath).document(product.id).setData(from: product)
                .map{ _ in true }
                .eraseToAnyPublisher()
        }
        
    func collectionFood() -> AnyPublisher<[FoodData], Error>{
        db.collection(productPath)
            .getDocuments()
            .tryMap(\.documents)
            .tryMap{ snapshots in
                try snapshots.map({
                    try $0.data(as: FoodData.self)
                })
            }
            .eraseToAnyPublisher()
    }
}
