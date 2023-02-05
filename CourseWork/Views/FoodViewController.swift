//
//  FoodViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/20/23.
//

import UIKit
import SDWebImage

class FoodViewController: UITableViewCell {

    static let identifier = "TweetTableViewCell"
    
    private let avatarImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "pizza 2")
        imageView.backgroundColor = .black
        return imageView
    }()
    
    private let foodName : UILabel = {
        let label = UILabel()
        label.text = "Pizza"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
//    private let foodDetail : UILabel = {
//        let label = UILabel()
//        label.text = "Rs.1050.00"
//        label.textColor = .secondaryLabel
//        label.font = .systemFont(ofSize: 16, weight: .regular)
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    private let foodDetail : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is my mockup tweet. It is going to take multiple lines. I believe some more text is enough but lets add some anyway.."
        label.numberOfLines = 0
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(foodName)
//        contentView.addSubview(usernameLabel)
        contentView.addSubview(foodDetail)
        configureConstraints()
    }
    
    func configureProducts(with model: FoodData) {
        foodName.text = model.name
//        usernameLabel.text = model.caloriesCon
        foodDetail.text = model.bio
        avatarImageView.sd_setImage(with: URL(string: model.avatarPath))
    }
    
    private func configureConstraints() {
        let avatarImageViewConstraints = [
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50)
        ]
        
        let foodNameLabelConstraints = [
            foodName.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            foodName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20)
        ]
        
//        let usernameLabelConstraints = [
//            usernameLabel.leadingAnchor.constraint(equalTo: displayNameLabel.trailingAnchor, constant: 10),
//            usernameLabel.centerYAnchor.constraint(equalTo: displayNameLabel.centerYAnchor)
//        ]
        
        let foodDetailLabelConstraints = [
            foodDetail.leadingAnchor.constraint(equalTo: foodName.leadingAnchor),
            foodDetail.topAnchor.constraint(equalTo: foodName.bottomAnchor, constant: 10),
            foodDetail.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            foodDetail.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ]
        
        NSLayoutConstraint.activate(avatarImageViewConstraints)
        NSLayoutConstraint.activate(foodNameLabelConstraints)
//        NSLayoutConstraint.activate(usernameLabelConstraints)
        NSLayoutConstraint.activate(foodDetailLabelConstraints)
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }

}
