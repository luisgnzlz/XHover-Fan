//
//  ProgammaticView.swift
//  tester
//
//  Created by Luis Gonzalez on 8/23/21.
//

import UIKit

class ProgammaticView: UIView {
    
    @available(*, unavailable, message: "Don't use init(coder:), override init(frame:) instead")
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        override init(frame: CGRect) {
            super.init(frame: frame)

            configure()
            constrain()
        }

        func configure() {}
        func constrain() {}
}
