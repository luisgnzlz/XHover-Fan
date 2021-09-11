//
//  TipsTitleView.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/10/21.
//

import UIKit

class TipsTitleView: ProgammaticView {

    let listMenu = UILabel()
    let lineBreak = UIView()
    
    override func configure() {
        listMenu.font = UIFont.boldSystemFont(ofSize: 28)
        listMenu.textColor = .black
        listMenu.text = "Beginners"
        
        lineBreak.backgroundColor = .black
    }
    
    override func constrain() {
        addConstrainedSubviews(listMenu, lineBreak)
        
        NSLayoutConstraint.activate([
            
            listMenu.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            listMenu.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            listMenu.trailingAnchor.constraint(equalTo: trailingAnchor),
            listMenu.heightAnchor.constraint(equalToConstant: 50),
            
            lineBreak.topAnchor.constraint(equalTo: listMenu.bottomAnchor),
            lineBreak.leadingAnchor.constraint(equalTo: listMenu.leadingAnchor),
            lineBreak.trailingAnchor.constraint(equalTo: listMenu.trailingAnchor, constant: -150),
            lineBreak.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
}
