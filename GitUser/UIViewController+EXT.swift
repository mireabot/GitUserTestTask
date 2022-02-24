//
//  UIViewController+EXT.swift
//  GitUser
//
//  Created by Mikhail Kolkov on 23.02.2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    func presentGUAlertOnMainT(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GUAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .fullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
