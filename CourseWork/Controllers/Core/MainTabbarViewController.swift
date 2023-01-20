//
//  MainTabbarViewController.swift
//  CourseWork
//
//  Created by Lekhana on 1/20/23.
//

import UIKit

class MainTabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: FavouriteViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "house")
        vc1.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        vc2.tabBarItem.image = UIImage(systemName: "bookmark")
        vc2.tabBarItem.selectedImage = UIImage(systemName: "bookmark.fill")
        
        setViewControllers([vc1,vc2], animated: true)
    }
}
