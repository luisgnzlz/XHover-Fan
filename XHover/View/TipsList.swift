//
//  TipsList.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/8/21.
//

import UIKit

class TipsList: ProgammaticView {

    
    let listMenu = UILabel()
    let tipTitle = UILabel()
    let lineBreak = UIView()
    let tip = UILabel()
    
    
    override func configure() {
        listMenu.font = UIFont.boldSystemFont(ofSize: 28)
        listMenu.textColor = .black
        listMenu.text = "Beginners"
        
        lineBreak.backgroundColor = .black
        
        tipTitle.font = UIFont.boldSystemFont(ofSize: 20)
        tipTitle.textColor = .black
        tipTitle.text = "Use a good, clean VTX setup"
        
        tip.font = UIFont(name: "", size: 14)
        tip.textColor = .black
        tip.numberOfLines = 0
    }
    
    override func constrain() {
        addConstrainedSubviews(listMenu, lineBreak, tipTitle, tip)
        
        NSLayoutConstraint.activate([
        
            listMenu.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            listMenu.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            listMenu.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            lineBreak.topAnchor.constraint(equalTo: listMenu.bottomAnchor),
            lineBreak.leadingAnchor.constraint(equalTo: listMenu.leadingAnchor),
            lineBreak.trailingAnchor.constraint(equalTo: listMenu.trailingAnchor, constant: -150),
            lineBreak.heightAnchor.constraint(equalToConstant: 1),
            
            tipTitle.topAnchor.constraint(equalTo: listMenu.bottomAnchor, constant: 10),
            tipTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            tip.topAnchor.constraint(equalTo: tipTitle.bottomAnchor, constant: 10),
            tip.widthAnchor.constraint(equalTo: widthAnchor, constant: -50),
            tip.centerXAnchor.constraint(equalTo: centerXAnchor),
            tip.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
        ])
    }
}
