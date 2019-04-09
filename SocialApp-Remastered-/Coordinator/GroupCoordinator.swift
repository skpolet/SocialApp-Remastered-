//
//  GroupCoordinator.swift
//  SocialApp-Remastered-
//
//  Created by Sergey Mikhailov on 09/04/2019.
//  Copyright © 2019 Sergey Mikhailov. All rights reserved.
//

import UIKit

class GroupsListCoordinator: NavigationBarCoordinator {
    let navigationController: UINavigationController
    
    
    func start() {
        let vc: GroupsListController = GroupsListController.instantiate()
        navigationController.tabBarItem = UITabBarItem(title: "Группы", image: nil, selectedImage: nil)
        navigationController.pushViewController(vc, animated: false)
        vc.navigationItem.title = "GroupsListController"
        vc.coordinator = self
    }
    
    init() {
        navigationController = UINavigationController()
    }
}

