//
//  MainViewController.swift
//  Gusti
//
//  Created by Gusti Hidayat on 06/01/19.
//  Copyright © 2019 Gusti Hidayat. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.backgroundImage = UIImage()
        self.tabBar.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.tabBar.tintColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        self.tabBar.unselectedItemTintColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        self.viewControllers = self.setupViews()
    }

    private func setupViews() -> [UIViewController] {
        let home = HomeViewController()
        home.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "icon").withRenderingMode((.alwaysTemplate)), selectedImage: #imageLiteral(resourceName: "icon").withRenderingMode((.alwaysTemplate)))
        home.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: UIControlState.selected)
        home.tabBarItem.tag = 1
        
        let listrequest = ListRequestViewController()
        listrequest.tabBarItem = UITabBarItem(title: "Request", image: #imageLiteral(resourceName: "list (3)").withRenderingMode((.alwaysTemplate)), selectedImage: #imageLiteral(resourceName: "list (3)").withRenderingMode((.alwaysTemplate)))
        listrequest.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.white], for: UIControlState.selected)
        listrequest.tabBarItem.tag = 2
        
        let newanime = NewAnimeViewController()
        newanime.tabBarItem = UITabBarItem(title: "New Anime", image: #imageLiteral(resourceName: "youtube").withRenderingMode((.alwaysTemplate)), selectedImage: #imageLiteral(resourceName: "youtube").withRenderingMode((.alwaysTemplate)))
        newanime.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor : UIColor.white], for: UIControlState.selected)
        newanime.tabBarItem.tag = 3
        
        let new = HomeViewController()
        new.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "list (3)").withRenderingMode((.alwaysTemplate)), selectedImage: #imageLiteral(resourceName: "list (3)").withRenderingMode((.alwaysTemplate)))
        new.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: UIControlState.selected)
        new.tabBarItem.tag = 4

        let views = [home,listrequest,newanime, new].map { UINavigationController(rootViewController: $0) }
        return views
        
    }
}
