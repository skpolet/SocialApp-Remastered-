//
//  TabBarCoordinator.swift
//  SocialApp-Remastered-
//
//  Created by Sergey Mikhailov on 09/04/2019.
//  Copyright © 2019 Sergey Mikhailov. All rights reserved.
//

import UIKit

class TabBarVCCoordinator: TabBarCoordinator {
    var tabBarController: UITabBarController
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    init() {
        tabBarController = UITabBarController()
    }
    
    func start() {
        let friendsCoordinator: FriendsCoordinator = FriendsCoordinator()
        friendsCoordinator.start()
        childCoordinators.append(friendsCoordinator)
        
        let groupsCoordinator: GroupsListCoordinator = GroupsListCoordinator()
        groupsCoordinator.start()
        childCoordinators.append(groupsCoordinator)
        
        let newsCoordinator: NewsListCoordinator = NewsListCoordinator()
        newsCoordinator.start()
        childCoordinators.append(newsCoordinator)
        
        tabBarController.setViewControllers([friendsCoordinator.navigationController, groupsCoordinator.navigationController,newsCoordinator.navigationController], animated: false)
    }
    
}
