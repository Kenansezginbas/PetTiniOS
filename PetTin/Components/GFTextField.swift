//
//  GFEmailTextField.swift
//  PetTin
//
//  Created by Kenan Sezginbas on 21.01.2023.
//

import UIKit

class GFTextField: UITextField {
    var hintText: String?
    var isSecure: Bool?
    
    init(hintText: String, isSecure: Bool) {
        self.hintText = hintText
        self.isSecure = isSecure
        super.init(frame: .zero)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    final func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        placeholder                               = hintText
        keyboardType                              = .emailAddress
        backgroundColor                           = .gray.withAlphaComponent(0.5)
        isSecureTextEntry                         = isSecure ?? false
        textAlignment                             = .center
        textColor                                 = .white
        tintColor                                 = .white
        layer.cornerRadius                        = 8.0
    }
}
