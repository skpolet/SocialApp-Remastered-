//
//  NewsCoordinator.swift
//  SocialApp-Remastered-
//
//  Created by Sergey Mikhailov on 09/04/2019.
//  Copyright © 2019 Sergey Mikhailov. All rights reserved.
//
import UIKit

class NewsListCoordinator: NavigationBarCoordinator {
    let navigationController: UINavigationController
    
    
    func start() {
        let vc: NewsListController = NewsListController.instantiate()
        navigationController.tabBarItem = UITabBarItem(title: "Новостти", image: nil, selectedImage: nil)
        navigationController.pushViewController(vc, animated: false)
        vc.navigationItem.title = "NewsListController"
        vc.coordinator = self
    }
    
    init() {
        navigationController = UINavigationController()
    }
}
