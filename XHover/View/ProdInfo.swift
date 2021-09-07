//
//  ProdInfo.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/2/21.
//

import UIKit

class ProdInfo: UIView {
    
    let topLabel = UILabel()

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
        
    }
    
    func constrain() {
        addConstrainedSubviews(topLabel)
        
        NSLayoutConstraint.activate([
            
            topLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            topLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            topLabel.widthAnchor.constraint(equalTo: widthAnchor, constant: -10),
            
        ])
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

