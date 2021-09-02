//
//  MainViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 8/26/21.
//

import UIKit

class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVC()
    }
    
    func setUpVC() {
        viewControllers = [
            createNavController(for: ViewController(), title: "Home", image: UIImage(systemName: "house.fill")!),
            createNavController(for: UserInfoViewController(), title: "Account", image: UIImage(systemName: "person.fill")!)
        ]
    //UINavigationBar.appearance().prefersLargeTitles = true
    }

fileprivate func createNavController(for rootViewController: UIViewController,
                                                  title: String,
                                                  image: UIImage) -> UINavigationController {
    let navController = UINavigationController(rootViewController: rootViewController)
    
    if title == "Home" {
        rootViewController.navigationItem.title = "Shop"
        rootViewController.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bag.fill"), style: .plain, target: self, action: #selector(shoppingCart))
        rootViewController.navigationItem.rightBarButtonItem?.tintColor = .black
    } else {
    rootViewController.navigationItem.title = title
    }
    navController.tabBarItem.title = title
    navController.tabBarItem.image = image
    
    return navController
    }
    
    @objc func shoppingCart() {
        print("worked")
    }

}
