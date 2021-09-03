//
//  ProdInfo.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class ProdInfo: UIView {
    
    let image = UIImageView()
    let prodLabel = UILabel()
    let topLabel = UILabel()
    let buyButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        constrain()
    }
    
    func configure() {
        
        topLabel.text = ""
        topLabel.textAlignment = .center
        topLabel.font = UIFont(name: "Futura-Medium", size: 24)
        topLabel.textColor = .black
        topLabel.numberOfLines = 2
        
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
    
    func constrain() {
        addConstrainedSubviews(topLabel, image, prodLabel, buyButton)
        
        NSLayoutConstraint.activate([
            
            topLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            topLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            topLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -10),
            
            image.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 25),
            image.widthAnchor.constraint(equalToConstant: 200),
            image.heightAnchor.constraint(equalToConstant: 200),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            prodLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 20),
            prodLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -20),
            prodLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            buyButton.topAnchor.constraint(equalTo: prodLabel.bottomAnchor, constant: 50),
            buyButton.widthAnchor.constraint(equalToConstant: 150),
            buyButton.heightAnchor.constraint(equalToConstant: 50),
            buyButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
        ])
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

