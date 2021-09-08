//
//  ItemInfoScrollView.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/7/21.
//

import UIKit

class ItemInfoScrollView: UIScrollView {
    
    let holder = InfoProd()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        constraint()
    }
    
    func constraint() {
        addConstrainedSubviews(holder)
        
        NSLayoutConstraint.activate([
            holder.topAnchor.constraint(equalTo: topAnchor),
            holder.widthAnchor.constraint(equalTo: widthAnchor),
            holder.centerXAnchor.constraint(equalTo: centerXAnchor),
            holder.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
