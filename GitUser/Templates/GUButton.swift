//
//  GUButton.swift
//  GitUser
//
//  Created by Mikhail Kolkov on 23.02.2022.
//

import UIKit


//MARK: - Create button template

class GUButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(background: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = background
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
