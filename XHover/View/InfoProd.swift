//
//  InfoProd.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/7/21.
//

import UIKit

class InfoProd: ProgammaticView {

    let image = UIImageView()
    let prodLabel = UILabel()
    let buyButton = UIButton()
    
    override func configure() {
        image.contentMode = .scaleAspectFill
        image.backgroundColor = .green
        
        prodLabel.font = UIFont(name: "Futura-Medium", size: 16)
        prodLabel.textColor = .black
        prodLabel.numberOfLines = 0
        
        buyButton.setTitle("Add To Cart", for: .normal)
        buyButton.setTitleColor(.white, for: .normal)
        buyButton.backgroundColor = .black
        buyButton.layer.cornerRadius = 5
    }
    
    
    override func constrain() {
        addConstrainedSubviews(image, prodLabel, buyButton)
        
        NSLayoutConstraint.activate([
        
            image.topAnchor.constraint(equalTo: topAnchor),
            image.widthAnchor.constraint(equalToConstant: 200),
            image.heightAnchor.constraint(equalToConstant: 200),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            prodLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
            prodLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -20),
            prodLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            buyButton.topAnchor.constraint(equalTo: prodLabel.bottomAnchor, constant: 50),
            buyButton.widthAnchor.constraint(equalToConstant: 150),
            buyButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            buyButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        
        ])
    }
}
