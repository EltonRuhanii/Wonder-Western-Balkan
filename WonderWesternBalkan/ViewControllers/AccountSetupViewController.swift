//
//  AccountSetupViewController.swift
//  WonderWesternBalkan
//
//  Created by WIZZARD on 12.6.23.
//

import UIKit

class AccountSetupViewController: UIViewController {
    // MARK: PROPERTIES
    @IBOutlet weak var addProfile: UIView!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var createAccButton: UIButton!
    
    // MARK: - BODY
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    
    @IBAction func termConditionTapped(_ sender: Any) {
        if let termsVC = storyboard?.instantiateViewController(withIdentifier: "TermsViewController") as? TermsViewController {
            navigationController?.pushViewController(termsVC, animated: true)
        }
    }
}

// MARK: - FUNCTIONS
extension AccountSetupViewController {
    func setupUI() {
        createAccButton.layer.cornerRadius = 20
        addProfile.layer.cornerRadius = addProfile.frame.width / 2
        addProfile.backgroundColor = .clear
        addProfile.layer.borderWidth = 2
        addProfile.layer.borderColor = UIColor(named: "Text")?.cgColor

        usernameTextfield.backgroundColor = .clear
        usernameTextfield.borderStyle = .none
        usernameTextfield.placeholder = "  Username"
        usernameTextfield.leftViewMode = .always
        
        let iconImageView = UIImageView(image: UIImage(named: "Profile"))
        iconImageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        iconImageView.contentMode = .scaleAspectFit
        
        usernameTextfield.leftView = iconImageView
        NavigationHelper.hideNavigationBar(self)
    }
    
    @IBAction func CrateAccountButtonPressed(_ sender: Any) {
        if let homeVC = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
            self.navigationController?.pushViewController(homeVC, animated: true)
        }
    }
    
}
