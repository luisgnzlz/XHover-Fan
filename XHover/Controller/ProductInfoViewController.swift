//
//  ProductInfoViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class ProductInfoViewController: UIViewController {

    let info = ProdInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        constrain()
    }
    
    func constrain() {
        view.addConstrainedSubviews(info)
        
        NSLayoutConstraint.activate([
            
            info.topAnchor.constraint(equalTo: view.topAnchor),
            info.widthAnchor.constraint(equalTo: view.widthAnchor),
            info.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
    }
    
}
