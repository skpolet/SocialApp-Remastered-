//
//  FriendsCoordinator.swift
//  SocialApp-Remastered-
//
//  Created by Sergey Mikhailov on 09/04/2019.
//  Copyright © 2019 Sergey Mikhailov. All rights reserved.
//

import UIKit

class FriendsCoordinator: NavigationBarCoordinator {
    let navigationController: UINavigationController
    

    func start() {
        let vc: FriendsListController = FriendsListController.instantiate()
        navigationController.tabBarItem = UITabBarItem(title: "Друзья", image: nil, selectedImage: nil)
        navigationController.pushViewController(vc, animated: false)
        vc.navigationItem.title = "FriendsListController"
        vc.coordinator = self
    }
    
    init() {
        navigationController = UINavigationController()
    }
}
