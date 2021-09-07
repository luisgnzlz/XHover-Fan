//
//  RecentlyPurchasedCollectionViewCell.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/7/21.
//

import UIKit

class RecentlyPurchasedCollectionViewCell: UICollectionViewCell {
    
    var TopItemPicture = UIImageView()
    var itemInfo = UILabel()
    var priceForItem = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        constrain()
    }
    
    func configure() {
        TopItemPicture.image = UIImage(named: "frame1")
        TopItemPicture.contentMode = .scaleAspectFit

        itemInfo.font = UIFont.systemFont(ofSize: 16)
        itemInfo.lineBreakMode = .byWordWrapping
        itemInfo.numberOfLines = 2
        itemInfo.textColor = .black
        
        priceForItem.text = ""
        priceForItem.font = UIFont.boldSystemFont(ofSize: 14)
    }
    
    func constrain() {
        addConstrainedSubviews(TopItemPicture, itemInfo, priceForItem)
        
        NSLayoutConstraint.activate([
            TopItemPicture.topAnchor.constraint(equalTo: topAnchor),
            TopItemPicture.widthAnchor.constraint(equalTo: widthAnchor, constant: -10),
            TopItemPicture.heightAnchor.constraint(equalTo: heightAnchor, constant: -50),
            TopItemPicture.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -100),
            
            itemInfo.topAnchor.constraint(equalTo: topAnchor, constant: 25),
            itemInfo.trailingAnchor.constraint(equalTo: trailingAnchor),
            itemInfo.leadingAnchor.constraint(equalTo: TopItemPicture.trailingAnchor, constant: -100),
            
            priceForItem.topAnchor.constraint(equalTo: itemInfo.bottomAnchor),
            priceForItem.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -10),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
