//
//  HomeViewViewModel.swift
//  CourseWork
//
//  Created by Lekhana on 2/5/23.
//

import Foundation
import Combine
import FirebaseAuth


final class HomeViewViewModel: ObservableObject {
    
    @Published var user: TwitterUser?
    @Published var error: String?
    @Published var products:[FoodData] = []
    
    private var subscription: Set<AnyCancellable> = []
    
    func retreiveUser(){
        guard let id = Auth.auth().currentUser?.uid else { return }
        DatabaseManager.shared.collectionUsers(retreive: id)

        self.fetchFood()

    }

    
    func fetchFood(){
        DatabaseManager.shared.collectionFood()
            .sink{ [weak self] completion in
                if case .failure(let error) = completion {
                    self?.error = error.localizedDescription
                }
            } receiveValue: { [weak self] retreivedTweets in
                self?.products = retreivedTweets
            }
            .store(in: &subscription)
    }
}
