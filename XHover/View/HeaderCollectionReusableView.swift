//
//  HeaderCollectionReusableView.swift
//  XHover
//
//  Created by Luis Gonzalez on 8/5/21.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
        
    static let identifier = "HeaderCollectionReusableView"
    
    let headerLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        constrain()
    }
    
    func configure() {
        headerLabel.textColor = .black
        headerLabel.layer.cornerRadius = 10
        headerLabel.layer.masksToBounds = true
        headerLabel.text = "  BEST SELLERS"
        headerLabel.font = UIFont.boldSystemFont(ofSize: 22)
    }
    
    func constrain() {
        addConstrainedSubviews(headerLabel)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor),
            headerLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
