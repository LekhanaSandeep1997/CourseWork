//
//  HomeViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/20/23.
//

import UIKit

class HomeViewController: UIViewController {

    private func configureNavigationBar() {
        let size : CGFloat = 46
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
        tableView.register(TweetViewController.self, forCellReuseIdentifier: TweetViewController.identifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(timelineTableView)
        timelineTableView.delegate = self
        timelineTableView.dataSource = self
        configureNavigationBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        timelineTableView.frame = view.frame
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }

}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TweetViewController.identifier, for: indexPath) as? TweetViewController else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let vc = DetailViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
