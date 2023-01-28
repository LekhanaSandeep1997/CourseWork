//
//  HomeViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/20/23.
//

import UIKit
import FirebaseAuth
import Combine

class HomeViewController: UIViewController {
    
    private var viewModel = FoodViewViewModel()
    private var subscriptions: Set<AnyCancellable> = []

    private func configureNavigationBar() {
        let size : CGFloat = 48
        let logoImageView = UIImageView(frame: CGRect(x : 0, y: 0, width: size, height: size))
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.image = UIImage(systemName: "timelapse")
        logoImageView.layer.cornerRadius = 25
        let middleView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))
        middleView.addSubview(logoImageView)
        
        navigationItem.titleView = middleView

    }

    private let timelineTableView : UITableView = {
        let tableView = UITableView()
        tableView.register(FoodViewController.self, forCellReuseIdentifier: FoodViewController.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(timelineTableView)
        timelineTableView.delegate = self
        timelineTableView.dataSource = self
        configureNavigationBar()
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "rectangle.portrait.and.arrow.right"), style: .plain, target: self, action: #selector(didTapSignOut))
    }
    
    @objc private func didTapSignOut(){
        try? Auth.auth().signOut()
        handleAuthentication()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        handleAuthentication()
        viewModel.retreiveUser()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        timelineTableView.frame = view.frame
    }
    
    private func handleAuthentication() {
        if Auth.auth().currentUser == nil {
            let vc = UINavigationController(rootViewController: WelcomePageViewController())
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
        
        if Auth.auth().currentUser == nil {
            let vc = UINavigationController(rootViewController: WelcomePageViewController())
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: false)
            
        }
    }

}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.food.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FoodViewController.identifier, for: indexPath) as? FoodViewController else {
            return UITableViewCell()
        }
        let foodModel = viewModel.food[indexPath.row]
        cell.configureFood(with: foodModel.name,
                            description: foodModel.description,
                            avatarPath: foodModel.ingredients,
                            nutritionlevel: foodModel.nutritionlevel,
                            ingredients: foodModel.avatarPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let vc = DetailViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

