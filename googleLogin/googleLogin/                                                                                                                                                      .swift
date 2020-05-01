//
//  ViewController.swift
//  GoogleLogin
//
//  Created by Auriga on 01/05/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController
{
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //GIDSignIn.sharedInstance()?.uiDelegate = self 
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        print(appDelegate.fullName)
        // Automatically sign in the user.
         


    }


}

