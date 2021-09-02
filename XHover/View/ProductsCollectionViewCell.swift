//
//  ProductsCollectionViewCell.swift
//  XHover
//
//  Created by Luis Gonzalez on 8/3/21.
//

import UIKit

class ProductsCollectionViewCell: UICollectionViewCell {
    
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

        itemInfo.font = UIFont.systemFont(ofSize: 12)
        itemInfo.lineBreakMode = .byWordWrapping
        itemInfo.numberOfLines = 2
        
        priceForItem.text = ""
        priceForItem.font = UIFont.boldSystemFont(ofSize: 14)
    }
    
    func constrain() {
        addConstrainedSubviews(TopItemPicture, itemInfo, priceForItem)
        
        NSLayoutConstraint.activate([
            TopItemPicture.centerXAnchor.constraint(equalTo: centerXAnchor),
            TopItemPicture.topAnchor.constraint(equalTo: topAnchor),
            TopItemPicture.widthAnchor.constraint(equalTo: widthAnchor, constant: -10),
            TopItemPicture.heightAnchor.constraint(equalTo: heightAnchor, constant: -50),
            
            itemInfo.topAnchor.constraint(equalTo: TopItemPicture.bottomAnchor),
            itemInfo.widthAnchor.constraint(equalTo: widthAnchor, constant: -10),
            itemInfo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            priceForItem.topAnchor.constraint(equalTo: itemInfo.bottomAnchor),
            priceForItem.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
