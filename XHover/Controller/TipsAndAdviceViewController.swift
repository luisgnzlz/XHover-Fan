//
//  TipsAndAdviceViewController.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class TipsAndAdviceViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let tipTitle = TipsTitleView()
    let tips = TipsList()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
        constrain()
    }
    
    func configure() {
        tips.tip.text = tipDiscrip[0]
    }
    
    func constrain() {
        view.addConstrainedSubviews(tipTitle, scrollView)
        scrollView.addConstrainedSubviews(tips)
        
        NSLayoutConstraint.activate([
            
            tipTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            tipTitle.widthAnchor.constraint(equalTo: view.widthAnchor),
            tipTitle.heightAnchor.constraint(equalToConstant: 65),
        
            scrollView.topAnchor.constraint(equalTo: tipTitle.bottomAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            tips.topAnchor.constraint(equalTo: scrollView.topAnchor),
            tips.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            tips.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            tips.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        ])
    }
    
}
