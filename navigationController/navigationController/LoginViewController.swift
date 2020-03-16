//
//  LoginViewController.swift
//  navigationController
//
//  Created by Auriga on 16/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import Foundation
import UIKit
class LoginViewController : UIViewController
{
    
    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func loginTapped(_ sender: Any)
    {
        navigateToMainInterface()
    }
    
    private func navigateToMainInterface()
    {
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let mainNavigationVC = mainStoryBoard.instantiateViewController(withIdentifier: "MainNavigationController") as? MainNavigationController else
        {
            return
        }
        
        
        if let mainVC = mainNavigationVC.topViewController as? ViewController
        {
            mainVC.userName = userNameField.text
            mainVC.passWord = passwordField.text
        }
        
        present(mainNavigationVC, animated: true, completion: nil)
        
    }
}
