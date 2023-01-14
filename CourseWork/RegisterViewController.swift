//
//  RegisterViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/14/23.
//

import UIKit
import SnapKit

class RegisterViewController: UIViewController {
    
    let titleLabel : UILabel = {
         let label1 = UILabel()
         label1.translatesAutoresizingMaskIntoConstraints = false
         label1.font = .systemFont(ofSize: 30, weight: .bold)
         label1.textAlignment = .center
         label1.textColor = .red
         return label1
    }()
    
    let descriptionLabel : UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.font = .systemFont(ofSize: 20)
         label.textAlignment = .center
         label.textColor = .white
         return label
    }()
    
    var name : UITextField = {
        let name = UITextField()
        name.translatesAutoresizingMaskIntoConstraints = false
        name.font = .systemFont(ofSize: 15)
        name.textColor = .gray
        name.borderStyle = .roundedRect
        name.placeholder = "Name"
        return name
    }()
    
    var address : UITextField = {
        let address = UITextField()
        address.translatesAutoresizingMaskIntoConstraints = false
        address.font = .systemFont(ofSize: 15)
        address.textColor = .gray
        address.borderStyle = .roundedRect
        address.placeholder = "Address"
        return address
    }()
    
    var nic : UITextField = {
        let nic = UITextField()
        nic.translatesAutoresizingMaskIntoConstraints = false
        nic.font = .systemFont(ofSize: 15)
        nic.textColor = .gray
        nic.borderStyle = .roundedRect
        nic.placeholder = "NIC"
        return nic
    }()
    
    var email : UITextField = {
        let email = UITextField()
        email.translatesAutoresizingMaskIntoConstraints = false
        email.font = .systemFont(ofSize: 15)
        email.textColor = .gray
        email.borderStyle = .roundedRect
        email.placeholder = "Email"
        return email
    }()
    
    var password : UITextField = {
        let password = UITextField()
        password.translatesAutoresizingMaskIntoConstraints = false
        password.font = .systemFont(ofSize: 15)
        password.textColor = .gray
        password.borderStyle = .roundedRect
        password.placeholder = "Password"
        return password
    }()
    
    var phone : UITextField = {
        let phone = UITextField()
        phone.translatesAutoresizingMaskIntoConstraints = false
        phone.font = .systemFont(ofSize: 15)
        phone.textColor = .gray
        phone.borderStyle = .roundedRect
        phone.placeholder = "Phone"
        return phone
    }()
    
    let nameLabel : UILabel = {
         let label1 = UILabel()
         label1.translatesAutoresizingMaskIntoConstraints = false
         label1.font = .systemFont(ofSize: 14, weight: .bold)
         label1.textAlignment = .center
         return label1
    }()
    
    let addressLabel : UILabel = {
         let label2 = UILabel()
         label2.translatesAutoresizingMaskIntoConstraints = false
         label2.font = .systemFont(ofSize: 14, weight: .bold)
         label2.textAlignment = .center
         return label2
    }()
    
    let nicLabel : UILabel = {
         let label3 = UILabel()
         label3.translatesAutoresizingMaskIntoConstraints = false
         label3.font = .systemFont(ofSize: 14, weight: .bold)
         label3.textAlignment = .center
         return label3
    }()
    
    let emailLabel : UILabel = {
         let label4 = UILabel()
         label4.translatesAutoresizingMaskIntoConstraints = false
         label4.font = .systemFont(ofSize: 14, weight: .bold)
         label4.textAlignment = .center
         return label4
    }()
    
    let passwordLabel : UILabel = {
         let label5 = UILabel()
         label5.translatesAutoresizingMaskIntoConstraints = false
         label5.font = .systemFont(ofSize: 14, weight: .bold)
         label5.textAlignment = .center
         return label5
    }()
    
    let phoneLabel : UILabel = {
         let label6 = UILabel()
         label6.translatesAutoresizingMaskIntoConstraints = false
         label6.font = .systemFont(ofSize: 14, weight: .bold)
         label6.textAlignment = .center
         return label6
    }()
    
    var button : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .red
        btn.frame = CGRectMake(80, 80, 80, 80)
        return btn
    }()
    
    let viewHolder : UIStackView = {
         let stack = UIStackView()
         stack.axis = .vertical
         stack.spacing = 20
         stack.alignment = .leading
         stack.translatesAutoresizingMaskIntoConstraints = false
         return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        titleLabel.text = "Register Now"
        descriptionLabel.text = "Please fill the form"
        nameLabel.text = "Name"
        addressLabel.text = "Address"
        nicLabel.text = "NIC"
        emailLabel.text = "Email"
        passwordLabel.text = "Password"
        phoneLabel.text = "Phone"
        button.setTitle("Register",for: .normal)
        
        viewHolder.insertArrangedSubview(titleLabel, at: 0)
        viewHolder.insertArrangedSubview(descriptionLabel, at: 1)
        viewHolder.insertArrangedSubview(nameLabel, at: 2)
        viewHolder.insertArrangedSubview(name, at: 3)
        viewHolder.insertArrangedSubview(addressLabel, at: 4)
        viewHolder.insertArrangedSubview(address, at: 5)
        viewHolder.insertArrangedSubview(nicLabel, at: 6)
        viewHolder.insertArrangedSubview(nic, at: 7)
        viewHolder.insertArrangedSubview(emailLabel, at: 8)
        viewHolder.insertArrangedSubview(email, at: 9)
        viewHolder.insertArrangedSubview(passwordLabel, at: 10)
        viewHolder.insertArrangedSubview(password, at: 11)
        viewHolder.insertArrangedSubview(phoneLabel, at: 12)
        viewHolder.insertArrangedSubview(phone, at: 13)
        viewHolder.insertArrangedSubview(button, at: 14)

        view.addSubview(viewHolder)
        setupConstraint()
    }
    
    func setupConstraint(){
        titleLabel.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(0)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
        
        descriptionLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(80)
        }
        
        nameLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(-280)
//            make.bottom.equalToSuperview().offset(20)
        }
        
        name.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(80)
        }
        
        addressLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(-270)
        }
        
        address.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(80)
        }
        
        nicLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(-300)
        }
        
        nic.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(80)
        }
        
        emailLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(-290)
        }
        
        email.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(80)
        }
        
        passwordLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(-260)
        }
        
        password.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(80)
        }
        
        phoneLabel.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(0)
            make.trailing.equalToSuperview().offset(-280)
        }
        
        phone.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-20)
//            make.height.equalTo(80)
        }
        
        button.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(50)
        }
        
        viewHolder.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(130)
            make.leading.equalToSuperview().offset(5)
            make.trailing.equalToSuperview().offset(-5)
        }
        
    }
}
