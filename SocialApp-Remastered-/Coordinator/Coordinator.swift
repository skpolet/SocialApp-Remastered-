//
//  Coordinator.swift
//  SocialApp-Remastered-
//
//  Created by Sergey Mikhailov on 09/04/2019.
//  Copyright © 2019 Sergey Mikhailov. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    func start()
}

protocol NavigationBarCoordinator: Coordinator {
    var navigationController: UINavigationController { get }
}

protocol TabBarCoordinator: Coordinator {
    var tabBarController: UITabBarController { get }
}

