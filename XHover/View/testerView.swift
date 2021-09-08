//
//  testerView.swift
//  XHover
//
//  Created by Luis Gonzalez on 9/8/21.
//

import UIKit

class testerView: ProgammaticView {

    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    
    override func configure() {
        titleLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        titleLabel.numberOfLines = 0
        titleLabel.textColor = UIColor.white
        
        subtitleLabel.text = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
        subtitleLabel.numberOfLines = 0
        subtitleLabel.textColor = UIColor.white
    }
    
    override func constrain() {
        addConstrainedSubviews(titleLabel, subtitleLabel)
        
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 3/4).isActive = true
        
        subtitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        subtitleLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 3/4).isActive = true
        subtitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
}
