//
//  ViewController.swift
//  facebookLogin
//
//  Created by Auriga on 30/04/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit


class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    var firstName: String?
    var lastName: String?
    var email: String?
    var image: UIImage?
    var id: String?
    
    @IBAction func loginWithFacebook(_ sender: Any)
    {
        
        if let token = AccessToken.current,
            !token.isExpired  // if already logged in
        {
            self.fetchFacebookFields()
        }
        else
        {
        
            let log = LoginManager()
            log.logIn(permissions: ["public_profile", "email"], from: presentingViewController)
            {
                [weak self] (result, error) in
                // Check for error
                if error != nil
                {
                // Error occurred
                print(error!.localizedDescription)
                }
                // Check for cancel
                if (result!.isCancelled)
                {
                print("User cancelled login")
                return
                }
                else   //successfull login
                {
                    self?.fetchFacebookFields()   //get user information
                   // self?.triggerSuccessfullLogin()  //move to next page
                }
             }
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let token = AccessToken.current,
            !token.isExpired  // if already logged in
        {
            self.fetchFacebookFields()
            self.label.text = "Already Logged IN"
        }
        /*
        let loginButton = FBLoginButton()
        loginButton.permissions = ["public_profile", "email"]
        loginButton.center = view.center
        loginButton.delegate = self
        view.addSubview(loginButton)
         */

    }

func fetchFacebookFields()
    {
                //login successfull, now request the fields
                GraphRequest(graphPath: "me", parameters: ["fields" : "email, id, first_name, last_name, picture.width(480).height(480)"]).start()
                    {
                    (connection, result, error) in
                    //if we have an error display it and abort
                    if let error = error
                    {
                        print(error.localizedDescription)
                        return
                    }
                    //parse the fields out of the result
                    
                        let fields = result as? [String:Any]
                         self.firstName = fields!["first_name"] as? String
                         self.lastName = fields!["last_name"] as? String
                         self.email = fields!["email"] as? String
                         self.id = fields!["id"] as? String
                        
                        
                        if let imageURL = ((fields!["picture"] as? [String: Any])?["data"] as? [String: Any])?["url"] as? String {
                            print(imageURL)
                            let url = URL(string: imageURL)
                            let data = NSData(contentsOf: url!)
                            self.image = UIImage(data: data! as Data)
                            //self.profileImageView.image = image
                        }
                        
                        self.triggerSuccessfullLogin()
        }
            
    }

    func triggerSuccessfullLogin()
    {
        let mainStoryBoard = UIStoryboard(name:"Main", bundle:Bundle.main)
        guard let mainNavigationVC = mainStoryBoard.instantiateViewController(withIdentifier:"HomeNavigationVC") as? UINavigationController else
        {return}
        
        if let mainVC = mainNavigationVC.topViewController as? HomeViewController
        {
            mainVC.name = "Hi!"+self.firstName!
            mainVC.email = self.email!
            mainVC.myimage = self.image
        }
        
        self.present(mainNavigationVC, animated: true, completion: nil)
    }


}

