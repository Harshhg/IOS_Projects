//
//  ViewController.swift
//  
//
//  Created by Auriga on 01/05/20.
//

import UIKit
import GoogleSignIn
class ViewController: UIViewController , GIDSignInUIDelegate, GIDSignInDelegate{
    var userId:String?
    var fullName: String?
    
    
    @IBAction func logOut(_ sender: Any)
    {
         GIDSignIn.sharedInstance().signOut()
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!)
    {
        if let error = error
        {
            if (error as NSError).code == GIDSignInErrorCode.hasNoAuthInKeychain.rawValue {
                print("The user has not signed in before or they have since signed out.")
            }
            else
            {
                print("\(error.localizedDescription)")
            }
            return
        }
        // if already signed in
        if GIDSignIn.sharedInstance().hasAuthInKeychain()
        {
            print("Already Signed in")
        }
        // Perform any operations on signed in user here.
        userId = user.userID                  // For client-side use only!
        let idToken = user.authentication.idToken // Safe to send to the server
        fullName = user.profile.name
        let givenName = user.profile.givenName
        let familyName = user.profile.familyName
        let email = user.profile.email
        print(userId)
        print(email)
        print(fullName)
        print(user.profile.imageURL(withDimension: 400))
        
    }
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()

        GIDSignIn.sharedInstance()?.uiDelegate = self
        GIDSignIn.sharedInstance()?.delegate = self
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
