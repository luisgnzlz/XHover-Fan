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
    let lineSeperator = UIView()

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
        
        lineSeperator.backgroundColor = .black
    }
    
    func constrain() {
        addConstrainedSubviews(headerLabel, lineSeperator)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor),
            headerLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1/2),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            lineSeperator.topAnchor.constraint(equalTo: headerLabel.bottomAnchor),
            lineSeperator.leadingAnchor.constraint(equalTo: headerLabel.leadingAnchor),
            lineSeperator.widthAnchor.constraint(equalTo: headerLabel.widthAnchor),
            lineSeperator.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
