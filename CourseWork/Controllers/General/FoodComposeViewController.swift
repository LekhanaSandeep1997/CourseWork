//
//  FoodComposeViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/29/23.
//

import UIKit
import Combine
import PhotosUI


class FoodComposeViewController: UIViewController {
    
//    private let scrollView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        scrollView.alwaysBounceVertical = true
//        scrollView.keyboardDismissMode = .onDrag
//        return scrollView
//    }()
//
//    private let nameField : UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.keyboardType = .default
//        textField.backgroundColor = .secondarySystemFill
//        textField.leftViewMode = .always
//        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
//        textField.layer.masksToBounds = true
//        textField.layer.cornerRadius = 8
//        textField.placeholder = "Name"
//        textField.tintColor = .white
//        return textField
//    }()
//
//    private let sugarLevel : UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.keyboardType = .default
//        textField.backgroundColor = .secondarySystemFill
//        textField.leftViewMode = .always
//        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
//        textField.layer.masksToBounds = true
//        textField.layer.cornerRadius = 8
//        textField.placeholder = "Sugar Level"
//        textField.tintColor = .white
//        return textField
//    }()
//
//    private let saltLevel : UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.keyboardType = .default
//        textField.backgroundColor = .secondarySystemFill
//        textField.leftViewMode = .always
//        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
//        textField.layer.masksToBounds = true
//        textField.layer.cornerRadius = 8
//        textField.placeholder = "Salt Level"
//        textField.tintColor = .white
//        return textField
//    }()
//
//    private let caloriesLevel : UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.keyboardType = .default
//        textField.backgroundColor = .secondarySystemFill
//        textField.leftViewMode = .always
//        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
//        textField.layer.masksToBounds = true
//        textField.layer.cornerRadius = 8
//        textField.placeholder = "Calories Level"
//        textField.tintColor = .white
//        return textField
//    }()
//
//    private let descriptionField : UITextField = {
//        let textField = UITextField()
//        textField.translatesAutoresizingMaskIntoConstraints = false
//        textField.keyboardType = .default
//        textField.backgroundColor = .secondarySystemFill
//        textField.leftViewMode = .always
//        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
//        textField.layer.masksToBounds = true
//        textField.layer.cornerRadius = 8
//        textField.placeholder = "Description"
//        textField.tintColor = .white
//        return textField
//    }()
//
//    private let avatarPlaceHolderImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.clipsToBounds = true
//        imageView.layer.masksToBounds = true
//        imageView.layer.cornerRadius = 60
//        imageView.backgroundColor = .lightGray
//        imageView.image = UIImage(systemName: "camera.fill")
//        imageView.tintColor = .gray
//        imageView.isUserInteractionEnabled = true
//        return imageView
//    }()
//
//    private let hintLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Fill in Your Data"
//        label.font = .systemFont(ofSize: 32, weight: .bold)
//        label.textColor = .label
//        return label
//    }()
//
//    private var addButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        button.backgroundColor = .systemBlue
//        button.setTitle("Submit", for: .normal)
//        button.layer.cornerRadius = 30
//        button.clipsToBounds = true
//        button.setTitleColor(.white, for: .normal)
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .systemBackground
//
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(didTapToCancel))
//        view.addSubview(scrollView)
//        scrollView.addSubview(hintLabel)
//        view.addSubview(avatarPlaceHolderImageView)
//        view.addSubview(addButton)
//        view.addSubview(nameField)
//        view.addSubview(sugarLevel)
//        view.addSubview(saltLevel)
//        view.addSubview(caloriesLevel)
//        view.addSubview(descriptionField)
//
//        configureConstraints()
//    }
//
//    private func configureConstraints() {
//
//        let scrollViewConstraints = [
//            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ]
//
//        let hintLabelConstraints = [
//            hintLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
//            hintLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10)
//        ]
//
//        let avatarPlaceholderImagViewConstraints = [
//            avatarPlaceHolderImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
//            avatarPlaceHolderImageView.heightAnchor.constraint(equalToConstant: 120),
//            avatarPlaceHolderImageView.widthAnchor.constraint(equalToConstant: 120),
//            avatarPlaceHolderImageView.topAnchor.constraint(equalTo: hintLabel.bottomAnchor, constant: 30)
//        ]
//
//        let nameFieldConstraints = [
//            nameField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
//            nameField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
//            nameField.topAnchor.constraint(equalTo: avatarPlaceHolderImageView.bottomAnchor, constant: 40),
//            nameField.heightAnchor.constraint(equalToConstant: 50)
//        ]
//
//        let sugarLevelConstraints = [
//            sugarLevel.leadingAnchor.constraint(equalTo: nameField.leadingAnchor),
//            sugarLevel.trailingAnchor.constraint(equalTo: nameField.trailingAnchor),
//            sugarLevel.topAnchor.constraint(equalTo: nameField.bottomAnchor, constant: 20),
//            sugarLevel.heightAnchor.constraint(equalToConstant: 50)
//        ]
//
//        let saltLevelConstraints = [
//            saltLevel.leadingAnchor.constraint(equalTo: sugarLevel.leadingAnchor),
//            saltLevel.trailingAnchor.constraint(equalTo: sugarLevel.trailingAnchor),
//            saltLevel.topAnchor.constraint(equalTo: sugarLevel.bottomAnchor, constant: 20),
//            saltLevel.heightAnchor.constraint(equalToConstant: 50)
//        ]
//
//        let caloriesLevelConstraints = [
//            caloriesLevel.leadingAnchor.constraint(equalTo: saltLevel.leadingAnchor),
//            caloriesLevel.trailingAnchor.constraint(equalTo: saltLevel.trailingAnchor),
//            caloriesLevel.topAnchor.constraint(equalTo: saltLevel.bottomAnchor, constant: 20),
//            caloriesLevel.heightAnchor.constraint(equalToConstant: 50)
//        ]
//
//        let descriptionTextConstraints = [
//            descriptionField.leadingAnchor.constraint(equalTo: caloriesLevel.leadingAnchor),
//            descriptionField.trailingAnchor.constraint(equalTo: caloriesLevel.trailingAnchor),
//            descriptionField.topAnchor.constraint(equalTo: caloriesLevel.bottomAnchor, constant: 20),
//            descriptionField.heightAnchor.constraint(equalToConstant: 100)
//        ]
//
//        let addButtonConstraints = [
//            addButton.bottomAnchor.constraint(equalTo: view.keyboardLayoutGuide.topAnchor, constant: -20),
//            addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
//            addButton.widthAnchor.constraint(equalToConstant: 120),
//            addButton.heightAnchor.constraint(equalToConstant: 60)
//        ]
//
//        NSLayoutConstraint.activate(scrollViewConstraints)
//        NSLayoutConstraint.activate(hintLabelConstraints)
//        NSLayoutConstraint.activate(avatarPlaceholderImagViewConstraints)
//        NSLayoutConstraint.activate(nameFieldConstraints)
//        NSLayoutConstraint.activate(sugarLevelConstraints)
//        NSLayoutConstraint.activate(saltLevelConstraints)
//        NSLayoutConstraint.activate(caloriesLevelConstraints)
//        NSLayoutConstraint.activate(descriptionTextConstraints)
//        NSLayoutConstraint.activate(addButtonConstraints)
//    }
//
//    @objc private func didTapToCancel() {
//        dismiss(animated: true)
//    }

    
    
    
    private var viewModel = FoodComposeViewViewModel()
    private var subscriptions: Set<AnyCancellable> = []
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.alwaysBounceVertical = true
        scrollView.keyboardDismissMode = .onDrag
        return scrollView
    }()
    
    private let displayNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.backgroundColor = .secondarySystemFill
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 8
        textField.attributedPlaceholder = NSAttributedString(string: "Display Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    private let sugarTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.backgroundColor = .secondarySystemFill
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 8
        textField.attributedPlaceholder = NSAttributedString(string: "Sugar content", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    private let saltTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.backgroundColor = .secondarySystemFill
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 8
        textField.attributedPlaceholder = NSAttributedString(string: "Salt content", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    private let fatTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.backgroundColor = .secondarySystemFill
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 8
        textField.attributedPlaceholder = NSAttributedString(string: "Fat content", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    private let caloriesTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .default
        textField.backgroundColor = .secondarySystemFill
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 8
        textField.attributedPlaceholder = NSAttributedString(string: "Calories content", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        return textField
    }()
    
    private let hintLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Fill in You Data"
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .label
        return label
    }()
    
    private let avatarPlaceholderImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 60
        imageView.backgroundColor = .lightGray
        imageView.image = UIImage(systemName: "camera.fill")
        imageView.tintColor = .gray
        imageView.isUserInteractionEnabled = true
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let bioTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = .secondarySystemFill
        textView.layer.masksToBounds = true
        textView.layer.cornerRadius = 8
        textView.textContainerInset = .init(top: 15, left: 15, bottom: 15, right: 15)
        textView.text = "Description"
        textView.textColor = .gray
        textView.font = .systemFont(ofSize: 16)
        return textView
    }()
    
    private let submitButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Submit", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
        button.backgroundColor = .systemBlue
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 25
        button.isEnabled = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "cancel", style: .plain, target: self, action: #selector(didTapToCancel))
        view.addSubview(scrollView)
        scrollView.addSubview(hintLabel)
        scrollView.addSubview(avatarPlaceholderImageView)
        scrollView.addSubview(displayNameTextField)
        scrollView.addSubview(sugarTextField)
        scrollView.addSubview(saltTextField)
        scrollView.addSubview(fatTextField)
        scrollView.addSubview(caloriesTextField)
        scrollView.addSubview(bioTextView)
        scrollView.addSubview(submitButton)
        
        isModalInPresentation = true
        bioTextView.delegate = self
        displayNameTextField.delegate = self
        sugarTextField.delegate = self
        saltTextField.delegate = self
        fatTextField.delegate = self
        caloriesTextField.delegate = self
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapToDismiss)))
        
        avatarPlaceholderImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapToUpload)))
        submitButton.addTarget(self, action: #selector(didTapSubmit), for: .touchUpInside)
        
        configureConstraints()
        bindViews()
    }
    
    @objc private func didTapSubmit() {
        viewModel.uploadAvatar()
    }
    
    @objc private func didTapToCancel(){
        dismiss(animated: true)
    }
    
    @objc private func didUpdateDisplayName() {
        viewModel._name = displayNameTextField.text
        viewModel.validateUserProfileForm()
    }
    
    @objc private func didUpdateSugar() {
        viewModel._sugarLevel = sugarTextField.text
        viewModel.validateUserProfileForm()
    }
    
    @objc private func didUpdateSalt() {
        viewModel._saltLevel = saltTextField.text
        viewModel.validateUserProfileForm()
    }
    
    @objc private func didUpdatefat() {
        viewModel._fatLevel = fatTextField.text
        viewModel.validateUserProfileForm()
    }
    
    @objc private func didUpdateCalories() {
        viewModel._caloriesLevel = caloriesTextField.text
        viewModel.validateUserProfileForm()
    }
    
    private func bindViews() {
        displayNameTextField.addTarget(self, action: #selector(didUpdateDisplayName), for: .editingChanged)
        sugarTextField.addTarget(self, action: #selector(didUpdateSugar), for: .editingChanged)
        saltTextField.addTarget(self, action: #selector(didUpdateSalt), for: .editingChanged)
        fatTextField.addTarget(self, action: #selector(didUpdatefat), for: .editingChanged)
        caloriesTextField.addTarget(self, action: #selector(didUpdateCalories), for: .editingChanged)
        viewModel.$isFormValid.sink { [weak self] buttonState in
            self?.submitButton.isEnabled = buttonState
        }
        .store(in: &subscriptions)
        
        viewModel.$isOnboardingFinished.sink { [weak self] success in
            if success {
                self?.dismiss(animated: true)
            }
        }
        .store(in: &subscriptions)
    }
    
    
    @objc private func didTapToUpload() {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        configuration.selectionLimit = 1
        
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = self
        present(picker, animated: true)
    }
    
    @objc private func didTapToDismiss() {
        view.endEditing(true)
    }

    private func configureConstraints() {
        let scrollViewConstraints = [
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        let hintLabelConstraints = [
            hintLabel.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            hintLabel.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30)
        ]
        
        let avatarPlaceholderImageViewConstraints = [
            avatarPlaceholderImageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            avatarPlaceholderImageView.heightAnchor.constraint(equalToConstant: 120),
            avatarPlaceholderImageView.widthAnchor.constraint(equalToConstant: 120),
            avatarPlaceholderImageView.topAnchor.constraint(equalTo: hintLabel.bottomAnchor, constant: 30)
        ]
        
        let displayNameTextFieldConstraints = [
            displayNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            displayNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            displayNameTextField.topAnchor.constraint(equalTo: avatarPlaceholderImageView.bottomAnchor, constant: 40),
            displayNameTextField.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let sugarTextFieldConstraints = [
            sugarTextField.leadingAnchor.constraint(equalTo: displayNameTextField.leadingAnchor),
            sugarTextField.trailingAnchor.constraint(equalTo: displayNameTextField.trailingAnchor),
            sugarTextField.topAnchor.constraint(equalTo: displayNameTextField.bottomAnchor, constant: 20),
            sugarTextField.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let saltTextFieldConstraints = [
            saltTextField.leadingAnchor.constraint(equalTo: sugarTextField.leadingAnchor),
            saltTextField.trailingAnchor.constraint(equalTo: sugarTextField.trailingAnchor),
            saltTextField.topAnchor.constraint(equalTo: sugarTextField.bottomAnchor, constant: 20),
            saltTextField.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let fatTextFieldConstraints = [
            fatTextField.leadingAnchor.constraint(equalTo: saltTextField.leadingAnchor),
            fatTextField.trailingAnchor.constraint(equalTo: saltTextField.trailingAnchor),
            fatTextField.topAnchor.constraint(equalTo: saltTextField.bottomAnchor, constant: 20),
            fatTextField.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let caloriesTextFieldConstraints = [
            caloriesTextField.leadingAnchor.constraint(equalTo: fatTextField.leadingAnchor),
            caloriesTextField.trailingAnchor.constraint(equalTo: fatTextField.trailingAnchor),
            caloriesTextField.topAnchor.constraint(equalTo: fatTextField.bottomAnchor, constant: 20),
            caloriesTextField.heightAnchor.constraint(equalToConstant: 50)
        ]
        
        let bioTextViewConstraints = [
            bioTextView.leadingAnchor.constraint(equalTo: caloriesTextField.leadingAnchor),
            bioTextView.trailingAnchor.constraint(equalTo: caloriesTextField.trailingAnchor),
            bioTextView.topAnchor.constraint(equalTo: caloriesTextField.bottomAnchor, constant: 20),
            bioTextView.heightAnchor.constraint(equalToConstant: 150)
        ]
        
        let submitButtonConstraints = [
            submitButton.leadingAnchor.constraint(equalTo: bioTextView.leadingAnchor),
            submitButton.trailingAnchor.constraint(equalTo: bioTextView.trailingAnchor),
            submitButton.topAnchor.constraint(equalTo: bioTextView.bottomAnchor, constant: 20),
            submitButton.heightAnchor.constraint(equalToConstant: 50)
            
        ]
        
        NSLayoutConstraint.activate(scrollViewConstraints)
        NSLayoutConstraint.activate(hintLabelConstraints)
        NSLayoutConstraint.activate(avatarPlaceholderImageViewConstraints)
        NSLayoutConstraint.activate(displayNameTextFieldConstraints)
        NSLayoutConstraint.activate(sugarTextFieldConstraints)
        NSLayoutConstraint.activate(saltTextFieldConstraints)
        NSLayoutConstraint.activate(fatTextFieldConstraints)
        NSLayoutConstraint.activate(caloriesTextFieldConstraints)
        NSLayoutConstraint.activate(bioTextViewConstraints)
        NSLayoutConstraint.activate(submitButtonConstraints)
    }

}

extension FoodComposeViewController: UITextViewDelegate, UITextFieldDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        scrollView.setContentOffset(CGPoint(x: 0, y: textView.frame.origin.y - 100), animated: true)
        if textView.textColor == .gray {
            textView.textColor = .label
            textView.text = ""
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
        if textView.text.isEmpty {
            textView.text = "Description"
            textView.textColor = .gray
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
        viewModel._bio = textView.text
        viewModel.validateUserProfileForm()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        scrollView.setContentOffset(CGPoint(x: 0, y: textField.frame.origin.y - 100), animated: true)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: true)
    }
}

extension FoodComposeViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        
        for result in results {
            result.itemProvider.loadObject(ofClass: UIImage.self) { [weak self] object, error in
                if let image = object as? UIImage {
                    DispatchQueue.main.async {
                        self?.avatarPlaceholderImageView.image = image
                        self?.viewModel._imageData = image
                        self?.viewModel.validateUserProfileForm()
                    }
                }
            }
        }
    }
    
}
