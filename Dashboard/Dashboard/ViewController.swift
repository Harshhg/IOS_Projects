//
//  ViewController.swift
//  Dashboard
//
//  Created by Auriga on 24/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenu()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func sideMenu()
    {
        if revealViewController() != nil
        {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
        }
    }
  


}

