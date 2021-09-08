//
//  TesterViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/7/21.
//

import UIKit

class TesterViewController: UIViewController {
    
        let scrollView = UIScrollView()
        let info = ProdInfo()
        let contentView = testerView()
            
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .green
            setupScrollView()
        }
        
        func setupScrollView() {
            view.addConstrainedSubviews(info, scrollView)
            scrollView.addConstrainedSubviews(contentView)
            
            NSLayoutConstraint.activate([
                
                info.topAnchor.constraint(equalTo: view.topAnchor),
                info.widthAnchor.constraint(equalTo: view.widthAnchor),
                info.heightAnchor.constraint(equalToConstant: 100),
        
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
                scrollView.topAnchor.constraint(equalTo: info.bottomAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            ])
        }
        
}
