//
//  LoginViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/14/23.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let titleLabel : UILabel = {
         let label1 = UILabel()
         label1.translatesAutoresizingMaskIntoConstraints = false
         label1.font = .systemFont(ofSize: 30, weight: .bold)
         label1.textAlignment = .center
         return label1
    }()
    
    let descriptionLabel : UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.font = .systemFont(ofSize: 20)
         label.textAlignment = .center
         label.textColor = .black
         return label
    }()
    
    var username : UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.font = .systemFont(ofSize: 15)
        tf.textColor = .gray
        tf.borderStyle = .roundedRect
        tf.placeholder = "Username"
        return tf
    }()
    
    var password : UITextField = {
        let pw = UITextField()
        pw.translatesAutoresizingMaskIntoConstraints = false
        pw.font = .systemFont(ofSize: 15)
        pw.textColor = .gray
        pw.borderStyle = .roundedRect
        pw.placeholder = "Password"
        return pw
    }()
    var button : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .red
        btn.frame = CGRectMake(80, 80, 80, 80)
        return btn
    }()
    
    let regLabel : UILabel = {
         let label2 = UILabel()
         label2.translatesAutoresizingMaskIntoConstraints = false
         label2.font = .systemFont(ofSize: 18, weight: .regular)
         label2.textAlignment = .center
         return label2
    }()
    
    let regbutton : UIButton = {
        let regbtn = UIButton()
        regbtn.translatesAutoresizingMaskIntoConstraints = false
        regbtn.setTitle("Register Now", for: .normal)
        regbtn.setTitleColor(.blue, for: .normal)
        return regbtn
    }()
    
    let viewHolder : UIStackView = {
         let stack = UIStackView()
         stack.axis = .vertical
         stack.spacing = 20
         stack.alignment = .leading
         stack.translatesAutoresizingMaskIntoConstraints = false
         return stack
    }()
    
    let rvc = RegisterViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        
        titleLabel.text = "Hello Again!"
        descriptionLabel.text = "Welcome back you've been missed!"
        button.setTitle("Sign In",for: .normal)
        regLabel.text = "Not a Member?"

        viewHolder.insertArrangedSubview(titleLabel, at: 0)
        viewHolder.insertArrangedSubview(descriptionLabel, at: 1)
        viewHolder.insertArrangedSubview(username, at: 2)
        viewHolder.insertArrangedSubview(password, at: 3)
        viewHolder.insertArrangedSubview(button, at: 4)
        viewHolder.insertArrangedSubview(regLabel, at: 5)
        viewHolder.insertArrangedSubview(regbutton, at: 6)
        
        view.addSubview(viewHolder)
        setupConstraint()
        
        regbutton.addTarget(self, action: #selector(getNextAction), for: .touchUpInside)
    }
    
    @objc func getNextAction(){
        navigationController?.pushViewController(rvc, animated: true)
    }
    
    func setupConstraint(){
        titleLabel.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(30)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(5)
        }
        
        descriptionLabel.snp.makeConstraints {make in
//            make.top.equalToSuperview().offset(50)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(80)
        }
        
        username.snp.makeConstraints {make in
//            make.top.equalToSuperview().offset(50)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        password.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        button.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        regLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(80)
        }
        
        self.view.addSubview(regbutton)
        regbutton.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(380)
            make.leading.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-100)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(60)
        }
        
        viewHolder.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(130)
            make.leading.equalToSuperview().offset(5)
            make.trailing.equalToSuperview().offset(-5)
//            make.height.equalTo(50)
        }

    }

}
