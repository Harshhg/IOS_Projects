//
//  DetailViewController.swift
//  tableView
//
//  Created by Auriga on 16/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelField: UILabel!
    @IBOutlet weak var imageField: UIImageView!
    @IBOutlet weak var priceField: UILabel!
    
    var image = UIImage()
    var name = ""
    var price = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelField.text = name
        imageField.image = image
        priceField.text = "Rs. "+price
        
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
