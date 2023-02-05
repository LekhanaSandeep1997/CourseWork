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
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    let foodname : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 30, weight: .bold)
        label.textColor = .red
        return label
    }()
    
    private let foodDetail : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }()
    
    let sugarLevel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    let saltLevel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    let fatLevel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 0
        return label
    }()
    
    let caloriesLevel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textColor = .white
        label.numberOfLines = 0
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
//        poster.image = UIImage(named: "pizza")

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
        self.view.addSubview(poster)
        poster.snp.makeConstraints{ make in
            make.top.equalToSuperview()
            make.height.equalTo(400)
            make.leading.trailing.equalToSuperview()
        }
        let holder = UIStackView(arrangedSubviews: [foodname, foodDetail, sugarLevel, saltLevel, fatLevel, caloriesLevel])
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
