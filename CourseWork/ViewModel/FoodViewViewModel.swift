//
//  FoodViewViewModel.swift
//  CourseWork
//
//  Created by Lekhana on 1/28/23.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift


class FoodViewViewModel: ObservableObject {
    
    @Published var food = [Food]()
    @Published var error: String?
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("food").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No")
                return
            }
            self.food = documents.map { (queryDocumentSnapshot) -> Food in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let ingredients = data["ingredients"] as? String ?? ""
                let description = data["description"] as? String ?? ""
                let nutritionlevel = data["nutritionlevel"] as? String ?? ""
                return Food(name: name, ingredients: ingredients, description: description, nutritionlevel: nutritionlevel)
            }
        }
    }
}
