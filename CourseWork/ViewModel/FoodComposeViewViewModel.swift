//
//  FoodComposeViewViewModel.swift
//  CourseWork
//
//  Created by Lekhana on 1/30/23.
//

import Foundation
import Combine
import UIKit
import FirebaseAuth
import FirebaseStorage

final class FoodComposeViewViewModel: ObservableObject {
    
    private var subscriptions: Set<AnyCancellable> = []
    
    @Published var isValidToTweet: Bool = false
    @Published var error: String = ""
    private var user: TwitterUser?
    private var subscription: Set<AnyCancellable> = []
    
    @Published var _name: String?
    @Published var _sugarLevel: String?
    @Published var _saltLevel: String?
    @Published var _fatLevel: String?
    @Published var _caloriesLevel: String?
    @Published var _bio: String?
    @Published var _avatarPath: String?
    @Published var isOnboardingFinished: Bool = false
    @Published var isFormValid: Bool = false
    @Published var _imageData: UIImage?
    
    func validateUserProfileForm() {
        guard let name = _name,
              name.count > 2,
              let bio = _bio,
              bio.count > 2,
              _imageData != nil else {
            isFormValid = false
            return
        }
        isFormValid = true
    }
    
    func uploadAvatar() {
        let randomID = UUID().uuidString
        guard let imageData = _imageData?.jpegData(compressionQuality: 0.5) else { return }
        let metaData = StorageMetadata()
        metaData.contentType = "image/jpeg"
        
        StorageManager.shared.uploadProfilePhoto(with: randomID, image: imageData, metaData: metaData)
            .flatMap({ metaData in
                StorageManager.shared.getDownloadURL(for: metaData.path)
            })
            .sink { [weak self] completion in
                switch completion {
                case .failure(let error):
                    print(error.localizedDescription)
                    self?.error = error.localizedDescription
                case .finished:
                    self?.dispatchTweet()
                }
            } receiveValue: { [weak self] url in
                self?._avatarPath = url.absoluteString
            }
            .store(in: &subscriptions)
    }
    
    
    
    func dispatchTweet() {
        
        let products = FoodData(
            name: _name ?? "",
            sugarLevel: _sugarLevel ?? "",
            saltLevel: _saltLevel ?? "",
            caloriesLevel: _caloriesLevel ?? "",
            fatLevel: _fatLevel ?? "",
            bio: _bio ?? "",
            avatarPath: _avatarPath ?? ""
        )
            DatabaseManager.shared.collectionProduct(dispatch: products)
            .sink { [weak self] completion in
                if case .failure(let error) = completion {
                    self?.error = error.localizedDescription
                }
            } receiveValue: { [weak self] onboardingState in
                self?.isOnboardingFinished = onboardingState
            }
            .store(in: &subscriptions)
        }
}
