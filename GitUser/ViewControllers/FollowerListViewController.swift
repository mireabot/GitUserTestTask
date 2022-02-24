//
//  FollowerListViewController.swift
//  GitUser
//
//  Created by Mikhail Kolkov on 23.02.2022.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1) {(followers, error) in
            guard let followers = followers else {
                self.presentGUAlertOnMainT(title: "Something wrong happened", message: error!, buttonTitle: "Ok")
                return
            }
            
            print("Followers count:\(followers.count)")
            print(followers)

        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }
}
