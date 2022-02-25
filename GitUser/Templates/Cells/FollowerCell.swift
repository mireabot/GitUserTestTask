//
//  FollowerCell.swift
//  GitUser
//
//  Created by Mikhail Kolkov on 25.02.2022.
//

import UIKit

class FollowerCell: UICollectionViewCell {
    
    static let reuseID = "followerCell"
    
    let avatar = GUAvatarImage(frame: .zero)
    let usernameLabel = GUTitleLabel(textAlign: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
    }
    
    private func configure() {
        addSubview(avatar)
        addSubview(usernameLabel)
        
        let padding : CGFloat = 8
        
        NSLayoutConstraint.activate([
            avatar.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            avatar.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            avatar.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            avatar.heightAnchor.constraint(equalTo: avatar.widthAnchor),
            
            usernameLabel.topAnchor.constraint(equalTo: avatar.bottomAnchor, constant: 12),
            usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
            usernameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
            usernameLabel.heightAnchor.constraint(equalToConstant: 20)
            
            
        ])
    }
    
}
