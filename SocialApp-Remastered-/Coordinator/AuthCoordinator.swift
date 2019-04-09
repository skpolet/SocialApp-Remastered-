//
//  MainCoordinator.swift
//  SocialApp-Remastered-
//
//  Created by Sergey Mikhailov on 09/04/2019.
//  Copyright © 2019 Sergey Mikhailov. All rights reserved.
//

import UIKit

class AuthCoordinator: Coordinator {
    
    var firstAuthController: AuthViewController
    
    init(controller: AuthViewController) {
        firstAuthController = controller
        firstAuthController = AuthViewController.instantiate()
        firstAuthController.coordinator = self
    }
    
    func start(){
        let coordinator : TabBarCoordinator?
        coordinator = TabBarVCCoordinator()
        coordinator?.start()
        firstAuthController.present(coordinator!.tabBarController, animated: true, completion: nil)
    }
    
}
