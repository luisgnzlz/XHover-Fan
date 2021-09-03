//
//  UserInfo.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/3/21.
//

import UIKit

class UserInfo: ProgammaticView {

    let banner = UIView()
    let userImage = UIImageView()
    
    override func configure() {
        backgroundColor = .white
        banner.backgroundColor = .black
        
        userImage.image = UIImage(named: "goat")
        userImage.layer.borderWidth = 4
        userImage.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        userImage.contentMode = .scaleToFill
    }
    
    override func constrain() {
        addConstrainedSubviews(banner, userImage)
        
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: topAnchor),
            banner.widthAnchor.constraint(equalTo: widthAnchor),
            banner.heightAnchor.constraint(equalToConstant: 400),
            
            userImage.topAnchor.constraint(equalTo: banner.bottomAnchor, constant: -75),
            userImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -10),
            userImage.widthAnchor.constraint(equalToConstant: 150),
            userImage.heightAnchor.constraint(equalToConstant: 150),
        ])
    }
    
}
