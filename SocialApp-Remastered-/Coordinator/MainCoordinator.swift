//
//  MainCoordinator.swift
//  SocialApp-Remastered-
//
//  Created by Sergey Mikhailov on 09/04/2019.
//  Copyright © 2019 Sergey Mikhailov. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var firstAuthController: AuthViewController
    
    init(controller: AuthViewController) {
        firstAuthController = controller
        firstAuthController = AuthViewController.instantiate()
        firstAuthController.coordinator = self
    }
    
    func start(){
        let vc = TabBarController.instantiate()
        vc.coordinator = self
        firstAuthController.present(vc, animated: true, completion: nil)
    }
    
}
