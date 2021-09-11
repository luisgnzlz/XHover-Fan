//
//  TipsList.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/8/21.
//

import UIKit

class TipsList: ProgammaticView {

    let tipTitle = UILabel()
    let tip = UILabel()
    
    
    override func configure() {
        
        tipTitle.font = UIFont.boldSystemFont(ofSize: 20)
        tipTitle.textColor = .black
        tipTitle.text = "Use a good, clean VTX setup"
        
        tip.font = UIFont(name: "", size: 14)
        tip.textColor = .black
        tip.numberOfLines = 0
    }
    
    override func constrain() {
        addConstrainedSubviews(tipTitle, tip)
        
        NSLayoutConstraint.activate([
            
            tipTitle.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            tipTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            tip.topAnchor.constraint(equalTo: tipTitle.bottomAnchor, constant: 10),
            tip.widthAnchor.constraint(equalTo: widthAnchor, constant: -50),
            tip.centerXAnchor.constraint(equalTo: centerXAnchor),
            tip.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ])
    }
}
