//
//  DetailViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/21/23.
//


import UIKit
import SnapKit

class DetailViewController: UIViewController {

    static let identifier = "TweerViewController"
    @Published var products: FoodData?

    let poster : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let foodname : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.textColor = .red
        label.text = "Food Name"
        label.numberOfLines = 0
        return label
    }()
    
    private let foodDetail : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    
    let sugarLevel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .white
        label.layer.cornerCurve = .circular
        label.layer.cornerRadius = 30
        label.layer.masksToBounds = true
        label.numberOfLines = 0
        return label
    }()
    
    let saltLevel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .white
        label.layer.cornerCurve = .circular
        label.layer.cornerRadius = 30
        label.layer.masksToBounds = true
        label.numberOfLines = 0
        label.text = "Salt"
        label.numberOfLines = 0
        return label
    }()
    
    let fatLevel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .white
        label.layer.cornerCurve = .circular
        label.layer.cornerRadius = 30
        label.layer.masksToBounds = true
        label.numberOfLines = 0
        label.numberOfLines = 0
        
        return label
    }()
    
    let caloriesLevel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = .white
        label.layer.cornerCurve = .circular
        label.layer.cornerRadius = 30
        label.layer.masksToBounds = true
        label.numberOfLines = 0
        label.numberOfLines = 0
        return label
    }()

    let button : UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Add to Favorite", for: .normal)
        btn.backgroundColor = .systemBlue
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 25
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(foodname)
        view.addSubview(foodDetail)
        view.addSubview(sugarLevel)
        view.addSubview(saltLevel)
        view.addSubview(fatLevel)
        view.addSubview(caloriesLevel)
        view.addSubview(poster)
        view.addSubview(button)

        self.view.backgroundColor = .systemBackground
        setupConstraint()
        
        configureProducts(with: products!)
    }

    func configureProducts(with model: FoodData) {
        foodname.text = model.name
        foodDetail.text = model.bio
        sugarLevel.text = model.sugarLevel
        saltLevel.text = model.saltLevel
        fatLevel.text = model.fatLevel
        caloriesLevel.text = model.caloriesLevel
        poster.sd_setImage(with: URL(string: model.avatarPath))
    }

    func setupConstraint(){
//        self.view.addSubview(poster)
//        poster.snp.makeConstraints{ make in
//            make.top.equalToSuperview()
//            make.height.equalTo(400)
//            make.leading.trailing.equalToSuperview()
//        }
//        let holder = UIStackView(arrangedSubviews: [foodnameLabel, foodname, foodDetail,  sugarLevel, saltLevel, fatLevel, caloriesLevel])
//        holder.spacing = 10
//        holder.axis = .vertical
//        self.view.addSubview(holder)
//
//        holder.snp.makeConstraints{ make in
//            make.top.equalTo(poster.snp_bottomMargin).offset(40)
//            make.leading.equalTo(view.snp_leadingMargin).offset(20)
//            make.trailing.equalTo(view.snp_trailingMargin).offset(-20)
//        }
//
//
//        self.view.addSubview(button)
//        button.snp.makeConstraints {make in
//            make.leading.equalToSuperview().offset(20)
//            make.bottom.equalToSuperview().offset(-100)
//            make.trailing.equalToSuperview().offset(-20)
//        }

        
        let avatarImageViewConstraints = [
            poster.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            poster.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            poster.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            poster.heightAnchor.constraint(equalToConstant: 5)
        ]

        let foodNameConstraints = [
            foodname.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            foodname.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            foodname.topAnchor.constraint(equalTo: poster.bottomAnchor, constant: 120),
            foodname.heightAnchor.constraint(equalToConstant: 30)
        ]

        let foodDetailConstraints = [
            foodDetail.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            foodDetail.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            foodDetail.topAnchor.constraint(equalTo: foodname.bottomAnchor, constant: 20),
            foodDetail.heightAnchor.constraint(equalToConstant: 30)
        ]

        let sugarLevelConstraints = [
            sugarLevel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sugarLevel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            sugarLevel.topAnchor.constraint(equalTo: foodDetail.bottomAnchor, constant: 40),
            sugarLevel.heightAnchor.constraint(equalToConstant: 40)
        ]

        let saltLevelConstraints = [
            saltLevel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            saltLevel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            saltLevel.topAnchor.constraint(equalTo: sugarLevel.bottomAnchor, constant: 20),
            saltLevel.heightAnchor.constraint(equalToConstant: 40)
        ]

        let fatLevelConstraints = [
            fatLevel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fatLevel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            fatLevel.topAnchor.constraint(equalTo: saltLevel.bottomAnchor, constant: 20),
            fatLevel.heightAnchor.constraint(equalToConstant: 40)
        ]

        let caloriesLevelConstraints = [
            caloriesLevel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            caloriesLevel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            caloriesLevel.topAnchor.constraint(equalTo: fatLevel.bottomAnchor, constant: 20),
            caloriesLevel.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        let buttonConstraints = [
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.topAnchor.constraint(equalTo: caloriesLevel.bottomAnchor, constant: 40),
            button.heightAnchor.constraint(equalToConstant: 50)
        ]

        NSLayoutConstraint.activate(avatarImageViewConstraints)
        NSLayoutConstraint.activate(foodNameConstraints)
        NSLayoutConstraint.activate(foodDetailConstraints)
        NSLayoutConstraint.activate(sugarLevelConstraints)
        NSLayoutConstraint.activate(saltLevelConstraints)
        NSLayoutConstraint.activate(fatLevelConstraints)
        NSLayoutConstraint.activate(caloriesLevelConstraints)
        NSLayoutConstraint.activate(buttonConstraints)
        
    }
}
