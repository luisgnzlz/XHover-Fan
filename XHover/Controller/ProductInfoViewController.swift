//
//  ProductInfoViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class ProductInfoViewController: UIViewController {

    let info = ProdInfo()
    let discrip = InfoProd()
    let scroll = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        constrain()
    }
    
    func constrain() {
        view.addConstrainedSubviews(info, scroll)
        scroll.addConstrainedSubviews(discrip)
        NSLayoutConstraint.activate([
            
            info.topAnchor.constraint(equalTo: view.topAnchor),
            info.widthAnchor.constraint(equalTo: view.widthAnchor),
            info.heightAnchor.constraint(equalToConstant: 150),
            
            scroll.topAnchor.constraint(equalTo: info.bottomAnchor),
            scroll.widthAnchor.constraint(equalTo: view.widthAnchor),
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scroll.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            discrip.topAnchor.constraint(equalTo: scroll.topAnchor),
            discrip.widthAnchor.constraint(equalTo: scroll.widthAnchor),
            discrip.centerXAnchor.constraint(equalTo: scroll.centerXAnchor),
            discrip.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
        ])
        
    }
    
}
