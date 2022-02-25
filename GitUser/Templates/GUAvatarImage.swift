//
//  GUAvatarImage.swift
//  GitUser
//
//  Created by Mikhail Kolkov on 25.02.2022.
//

import UIKit

class GUAvatarImage: UIImageView {
    
    let placeholder = UIImage(named: "avatar-placeholder")!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholder
        translatesAutoresizingMaskIntoConstraints = false
    }
}
