//
//  ProdInfo.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class ProdInfo: UIView {
    
    let background = UIView()
    let topLabel = UILabel()
    let price = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        constrain()
    }
    
    func configure() {
        
        background.backgroundColor = .black
        
        topLabel.text = ""
        //topLabel.textAlignment = .center
        topLabel.font = UIFont(name: "Futura-Medium", size: 24)
        topLabel.textColor = .black
        topLabel.numberOfLines = 2
        
        price.text = ""
        price.textAlignment = .right
        price.font = UIFont(name: "Futura-Medium", size: 34)
        price.textColor = .white
        
    }
    
    func constrain() {
        addConstrainedSubviews(topLabel, background, price)
        
        NSLayoutConstraint.activate([
            
            topLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            topLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2),
            
            background.topAnchor.constraint(equalTo: topAnchor),
            background.trailingAnchor.constraint(equalTo: trailingAnchor),
            background.heightAnchor.constraint(equalToConstant: 54),
            background.widthAnchor.constraint(equalToConstant: 100),
            
            price.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            price.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            price.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2),
            
        ])
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

