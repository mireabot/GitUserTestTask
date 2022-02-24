//
//  SearchViewController.swift
//  GitUser
//
//  Created by Mikhail Kolkov on 23.02.2022.
//

import UIKit

class SearchViewController: UIViewController {
    
    let logo = UIImageView()
    let usernameText = GUTextField()
    let actionButton = GUButton(background: .systemGreen, title: "Get info")
    
    var isUserNameEmpty : Bool {
        return !usernameText.text!.isEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        configureLogo()
        configureTexField()
        configureButton()
        createDismissGecture()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @objc func pushToFollowersList() {
        
        guard isUserNameEmpty else {
            print("empty name")
            presentGUAlertOnMainT(title: "Empty name", message: "please enter valid name 😊", buttonTitle: "Ok")
            return
            
        }
        
        let followerList = FollowerListViewController()
        followerList.username = usernameText.text
        followerList.title = usernameText.text
        navigationController?.pushViewController(followerList, animated: true)
    }
    
    func createDismissGecture() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tap)
    }
    
    
    func configureLogo() {
        view.addSubview(logo)
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.image = UIImage(named: "gh-logo")!
        
        NSLayoutConstraint.activate([
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.heightAnchor.constraint(equalToConstant: 200),
            logo.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configureTexField() {
        view.addSubview(usernameText)
        usernameText.delegate = self
        usernameText.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            usernameText.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 50),
            usernameText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            usernameText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameText.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func configureButton() {
        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        
        actionButton.addTarget(self, action: #selector(pushToFollowersList), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            actionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}



extension SearchViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        pushToFollowersList()
        return true
    }
}
