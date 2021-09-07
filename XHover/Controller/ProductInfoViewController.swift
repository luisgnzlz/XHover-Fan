//
//  ProductInfoViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class ProductInfoViewController: UIViewController {

    let info = ProdInfo()
    let scrollInfo = ItemInfoScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        constrain()
    }
    
    func constrain() {
        view.addConstrainedSubviews(info, scrollInfo)
        
        NSLayoutConstraint.activate([
            
            info.topAnchor.constraint(equalTo: view.topAnchor),
            info.widthAnchor.constraint(equalTo: view.widthAnchor),
            info.heightAnchor.constraint(equalToConstant: 150),
            
            scrollInfo.topAnchor.constraint(equalTo: info.bottomAnchor),
            scrollInfo.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollInfo.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollInfo.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
    }
    
}
