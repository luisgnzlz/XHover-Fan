//
//  MainViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 8/26/21.
//

import UIKit

class MainViewController: UITabBarController {
    
    let attrs = [
        NSAttributedString.Key.foregroundColor: UIColor.black,
        NSAttributedString.Key.font: UIFont(name: "Menlo-Bold", size: 24)!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpVC()
    }
    
    func setUpVC() {
        viewControllers = [
            createNavController(for: ViewController(), title: "Home", image: UIImage(systemName: "house.fill")!),
            createNavController(for: MapViewController(), title: "Map", image: UIImage(systemName: "map.fill")!),
            createNavController(for: VideosViewController(), title: "Videos", image: UIImage(systemName: "tv.fill")!),
            createNavController(for: TipsAndAdviceViewController(), title: "Tips", image: UIImage(systemName: "lightbulb.fill")!),
            createNavController(for: UserInfoViewController(), title: "Account", image: UIImage(systemName: "person.fill")!),
        ]
    //UINavigationBar.appearance().prefersLargeTitles = true
        UINavigationBar.appearance().barTintColor = .white
    }

fileprivate func createNavController(for rootViewController: UIViewController,
                                                  title: String,
                                                  image: UIImage) -> UINavigationController {
    let navController = UINavigationController(rootViewController: rootViewController)
    image.withTintColor(UIColor.white)
    if title == "Home" {
        rootViewController.navigationItem.title = nil
        rootViewController.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bag.fill"), style: .plain, target: self, action: #selector(shoppingCart))
        rootViewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "navLogo"), style: .plain, target: self, action: #selector(shoppingCart))
        rootViewController.navigationItem.rightBarButtonItem?.tintColor = .black
        rootViewController.navigationItem.leftBarButtonItem?.tintColor = .black
    } else if title == "Account" {
        //rootViewController.navigationItem.title = title
        rootViewController.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gearshape.fill"), style: .plain, target: self, action: #selector(shoppingCart))
        rootViewController.navigationItem.rightBarButtonItem?.tintColor = .black
        rootViewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Profile", style: .done, target: nil, action: nil)
        rootViewController.navigationItem.leftBarButtonItem?.setTitleTextAttributes(attrs, for: .normal)
        rootViewController.navigationItem.leftBarButtonItem?.tintColor = .black
    } else {
        rootViewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "\(title)", style: .plain, target: nil, action: nil)
        rootViewController.navigationItem.leftBarButtonItem?.setTitleTextAttributes(attrs, for: .normal)
        rootViewController.navigationItem.leftBarButtonItem?.tintColor = .black
        }
    navController.tabBarItem.title = title
    //UINavigationBar.appearance().titleTextAttributes = attrs
    navController.tabBarItem.image = image
    
    return navController
    }
    
    @objc func shoppingCart() {
        print("worked")
    }

}
