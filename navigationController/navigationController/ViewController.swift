//
//  ViewController.swift
//  navigationController
//
//  Created by Auriga on 15/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeField: UILabel!
    var userName: String?
    var passWord: String?
    override func viewDidLoad() {
                                                                                                                                                                                                                                                                          super.viewDidLoad()
        welcomeField.text = "Welcome \(userName!)"
        print(userName)
        print(passWord)
        // Do any additional setup after loading the view, typically from a nib.
    }


}

