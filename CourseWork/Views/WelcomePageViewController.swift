//
//  WelcomePageViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/27/23.
//

import UIKit

class WelcomePageViewController: UIViewController {
    
    let poster : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "welcome")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private let mainText: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "See What's New in the World"
        label.font = .systemFont(ofSize: 38, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .red
        label.textAlignment = .center
        label.textAlignment = .center
        return label
    }()
    
    private let createAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create Account", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24, weight: .bold)
        button.backgroundColor = .systemRed
        button.layer.masksToBounds = true
        button.tintColor = .white
        button.layer.cornerRadius = 30
        return button
    }()
    
    private let promptLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Have an account already?"
        label.font = .systemFont(ofSize: 14, weight: .regular)
        label.textColor = .black
        return label
    }()
    
    private let loginButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16)
        button.tintColor = .systemRed
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray
        
        view.addSubview(poster)
        view.addSubview(mainText)
        view.addSubview(createAccountButton)
        view.addSubview(promptLabel)
        view.addSubview(loginButton)
        
        createAccountButton.addTarget(self, action: #selector(didTapCreateAccount), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(didTapLoginAccount), for: .touchUpInside)
        
        setupConstraint()
    }
    
    @objc private func didTapCreateAccount() {
        let vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func didTapLoginAccount() {
        let vc = LoginViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setupConstraint(){
        
        let posterConstraint = [
            poster.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            poster.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            poster.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        
        let mainTextContraint = [
            mainText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mainText.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        
        let createAccountButtonConstraints = [
            createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createAccountButton.topAnchor.constraint(equalTo: mainText.bottomAnchor, constant: 230),
            createAccountButton.widthAnchor.constraint(equalTo: mainText.widthAnchor, constant: -20),
            createAccountButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        
        let promptLabelConstraints = [
            promptLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90),
            promptLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60)
        ]
        
        let loginButtonConstraint = [
            loginButton.centerYAnchor.constraint(equalTo: promptLabel.centerYAnchor),
            loginButton.leadingAnchor.constraint(equalTo: promptLabel.trailingAnchor, constant: 10)
        ]
        
        NSLayoutConstraint.activate(posterConstraint)
        NSLayoutConstraint.activate(mainTextContraint)
        NSLayoutConstraint.activate(createAccountButtonConstraints)
        NSLayoutConstraint.activate(promptLabelConstraints)
        NSLayoutConstraint.activate(loginButtonConstraint)
    }

}
