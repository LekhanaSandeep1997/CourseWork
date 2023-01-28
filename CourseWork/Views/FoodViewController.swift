//
//  FoodViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/20/23.
//

import UIKit
import SDWebImage

class FoodViewController: UITableViewCell {

    static let identifier = "FoodTableViewCell"
//    @Published private var vm = FoodViewViewModel()
    
    private let avatarImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
//        imageView.image = UIImage(named: "pizza 2")
        imageView.backgroundColor = .black
        return imageView
    }()
    
    private let displayNameLabel : UILabel = {
        let label = UILabel()
//        label.text = "Pizza"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let foodTextContentLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "This is my mockup tweet. It is going to take multiple lines. I believe some more text is enough but lets add some anyway.."
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(displayNameLabel)
        contentView.addSubview(foodTextContentLabel)
        configureConstraints()
    }
    
    func configureFood(with name: String, description: String, avatarPath: String, nutritionlevel: String, ingredients: String) {
        displayNameLabel.text = name
        foodTextContentLabel.text = description
        avatarImageView.sd_setImage(with: URL(string: avatarPath))
    }
    
    private func configureConstraints() {
        let avatarImageViewConstraints = [
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50)
        ]
        
        let displayNameLabelConstraints = [
            displayNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            displayNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20)
        ]
        

        
        let foodTextContentLabelConstraints = [
            foodTextContentLabel.leadingAnchor.constraint(equalTo: displayNameLabel.leadingAnchor),
            foodTextContentLabel.topAnchor.constraint(equalTo: displayNameLabel.bottomAnchor, constant: 10),
            foodTextContentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            foodTextContentLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ]
        
        NSLayoutConstraint.activate(avatarImageViewConstraints)
        NSLayoutConstraint.activate(displayNameLabelConstraints)
        NSLayoutConstraint.activate(foodTextContentLabelConstraints)
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }

}
