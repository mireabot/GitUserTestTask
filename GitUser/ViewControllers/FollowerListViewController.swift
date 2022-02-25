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
        
        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
            case .success(let followers):
                
                print("Followers count:\(followers.count)")
                print(followers)
                
            case .failure(let error):
                self.presentGUAlertOnMainT(title: "Something wrong happened", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
    }
}
