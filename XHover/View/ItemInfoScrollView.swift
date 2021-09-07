//
//  ItemInfoScrollView.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/7/21.
//

import UIKit

class ItemInfoScrollView: UIScrollView {
    
    let holder = InfoProd()
    let holdView = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        viewToScroll()
        constraint()
    }
    
    func viewToScroll() {
        holdView.addConstrainedSubviews(holder)
        
        NSLayoutConstraint.activate([
            holder.topAnchor.constraint(equalTo: holdView.topAnchor),
            holder.widthAnchor.constraint(equalTo: holdView.widthAnchor),
            holder.centerXAnchor.constraint(equalTo: holdView.centerXAnchor),
            holder.bottomAnchor.constraint(equalTo: holdView.bottomAnchor),
        ])
    }
    
    func constraint() {
        addConstrainedSubviews(holdView)
        
        NSLayoutConstraint.activate([
            holdView.topAnchor.constraint(equalTo: topAnchor),
            holdView.widthAnchor.constraint(equalTo: widthAnchor),
            holdView.centerXAnchor.constraint(equalTo: centerXAnchor),
            holdView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
