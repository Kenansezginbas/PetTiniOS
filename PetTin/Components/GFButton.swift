//
//  GFGoogleSignInButton.swift
//  PetTin
//
//  Created by Kenan Sezginbas on 22.01.2023.
//

import UIKit

class GFButton: UIButton {
    
    var buttonTitle: String?
    var buttonColor: UIColor?

    init(buttonTitle: String, buttonColor: UIColor) {
        self.buttonTitle = buttonTitle
        self.buttonColor = buttonColor
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder, title: String) {
        self.buttonTitle = title
        fatalError("init(coder:) has not been implemented")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    final func configure() {
        translatesAutoresizingMaskIntoConstraints       = false
        setTitle(buttonTitle, for: .normal)
        backgroundColor                                 = buttonColor
        layer.cornerRadius                              = 8.0
    }
}

