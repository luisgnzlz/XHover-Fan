//
//  UserInfoViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class UserInfoViewController: UIViewController {

    let userView = UserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        constrain()
    }
    
    func constrain() {
        view.addConstrainedSubviews(userView)
        
        NSLayoutConstraint.activate([
        
            userView.topAnchor.constraint(equalTo: view.topAnchor),
            userView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            userView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
    }
    
}
