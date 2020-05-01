///Users/auriga/Desktop/facebookLogin/facebookLogin/ViewController.swift
//  HomeViewController.swift
//  facebookLogin
//
//  Created by Auriga on 30/04/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class HomeViewController: UIViewController {

    @IBAction func logOut(_ sender: Any)
    {
        LoginManager().logOut()
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    
    var name: String?
    var email: String?
    var myimage: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()

        
        nameLabel.text = name
        emailLabel.text = email
        imageLabel.image = myimage
        // Do any additional setup after loading the view.
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
