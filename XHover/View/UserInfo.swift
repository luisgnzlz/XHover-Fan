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
    let name = UILabel()
    let addressTitle = UILabel()
    let address = UILabel()
    let lineSeperate = UIView()
    let recentP = UILabel()
    let lineSeperate2 = UIView()
    
    
    override func configure() {
        backgroundColor = .white
        banner.backgroundColor = .black
        
        userImage.image = UIImage(named: "goat")
        userImage.layer.borderWidth = 4
        userImage.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        userImage.contentMode = .scaleToFill
        
        name.text = "Bill Gluckman"
        name.font = UIFont(name: "Verdana-Bold", size: 20)
        name.textColor = .black
        
        addressTitle.font = UIFont(name: "Verdana", size: 20)
        addressTitle.textColor = .black
        addressTitle.text = "Address"
        
        lineSeperate.backgroundColor = .black
        
        address.text = "12345 BlahBlah St.\nLos Angeles, CA\n65432"
        address.font = UIFont(name: "Verdana", size: 12)
        address.textColor = .black
        address.numberOfLines = 4
        
        recentP.font = UIFont(name: "Verdana", size: 20)
        recentP.textColor = .black
        recentP.text = "Recently Purchased"
        
        lineSeperate2.backgroundColor = .black
    }
    
    override func constrain() {
        addConstrainedSubviews(banner, userImage, name, addressTitle, lineSeperate, address, recentP, lineSeperate2)
        
        NSLayoutConstraint.activate([
            banner.topAnchor.constraint(equalTo: topAnchor),
            banner.widthAnchor.constraint(equalTo: widthAnchor),
            banner.heightAnchor.constraint(equalToConstant: 300),
            
            userImage.topAnchor.constraint(equalTo: banner.bottomAnchor, constant: -75),
            userImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -10),
            userImage.widthAnchor.constraint(equalToConstant: 150),
            userImage.heightAnchor.constraint(equalToConstant: 150),
            
            name.topAnchor.constraint(equalTo: banner.bottomAnchor, constant: 10),
            name.leadingAnchor.constraint(equalTo: userImage.trailingAnchor, constant: 5),
            
            addressTitle.topAnchor.constraint(equalTo: userImage.bottomAnchor, constant: 10),
            addressTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            lineSeperate.topAnchor.constraint(equalTo: addressTitle.bottomAnchor),
            lineSeperate.heightAnchor.constraint(equalToConstant: 1),
            lineSeperate.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            lineSeperate.trailingAnchor.constraint(equalTo: addressTitle.trailingAnchor, constant: 50),
            
            address.topAnchor.constraint(equalTo: lineSeperate.bottomAnchor, constant: 5),
            address.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            recentP.topAnchor.constraint(equalTo: address.bottomAnchor, constant: 20),
            recentP.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            lineSeperate2.topAnchor.constraint(equalTo: recentP.bottomAnchor),
            lineSeperate2.heightAnchor.constraint(equalToConstant: 1),
            lineSeperate2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            lineSeperate2.trailingAnchor.constraint(equalTo: recentP.trailingAnchor, constant: 50),

        ])
    }
    
}
