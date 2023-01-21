//
//  DetailViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/21/23.
//


import UIKit
import SnapKit


class DetailViewController: UIViewController {
    
    
    let poster : UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.textColor = .red
        return label
    }()
    let descriptionLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    let priceLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.textColor = .white
        return label
    }()
    let button : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Add to Favorite", for: .normal)
        btn.backgroundColor = .white
        btn.setTitleColor(.systemPink, for: .normal)
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        poster.image = UIImage(named: "pizza")
        titleLabel.text = "Classic Cheese Pizza"
        priceLabel.text = "Rs. 1050.00"
        descriptionLabel.text = "This is my mockup tweet. It is going to take multiple lines. I believe some more text is enough but lets add some anyway.."
        self.view.backgroundColor = .systemBackground
        setupConstraint()
    }
    
    func setupConstraint(){
        self.view.addSubview(poster)
        poster.snp.makeConstraints{ make in
            make.top.equalToSuperview()
            make.height.equalTo(400)
            make.leading.trailing.equalToSuperview()
        }
        let holder = UIStackView(arrangedSubviews: [titleLabel, priceLabel, descriptionLabel])
        holder.spacing = 10
        holder.axis = .vertical
        self.view.addSubview(holder)
        
        holder.snp.makeConstraints{ make in
            make.top.equalTo(poster.snp_bottomMargin).offset(40)
            make.leading.equalTo(view.snp_leadingMargin).offset(20)
            make.trailing.equalTo(view.snp_trailingMargin).offset(-20)
        }
        self.view.addSubview(button)
        button.snp.makeConstraints {make in
            make.leading.equalToSuperview().offset(20)
            make.bottom.equalToSuperview().offset(-100)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
}
