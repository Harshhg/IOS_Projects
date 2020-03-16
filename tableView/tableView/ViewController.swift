//
//  ViewController.swift
//  tableView
//
//  Created by Auriga on 13/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
     @IBOutlet weak var tableView: UITableView!
    
       let data = [("Samsung M30S"), ("Redmi Note 8 Pro"), ("Realme 5 Pro"), ("Iphone 11 Pro Max"), ("One Plus 7 Pro")]
       let price = [("13,999"), ("14,999"), ("8,999"), ("1,19,999"),("33,999")]
       let image = [UIImage(named: "image1"),UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image5")]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return data.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "com.codepath.DemoPrototypeCell", for: indexPath) as! DemoPrototypeCell
        //let cityState = data[indexPath.row].components(separatedBy: ", ")
         cell.imageField.image=image[indexPath .row]
         cell.nameField.text = data[indexPath .row];
        cell.priceField.text = price[indexPath .row]+"/-"
        return cell;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.image = image[indexPath .row]!
        vc?.name = data[indexPath .row];
        vc?.price = price[indexPath .row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        tableView.dataSource=self;
        tableView.delegate=self;
        tableView.estimatedRowHeight=100
        tableView.rowHeight = UITableView.automaticDimension
        // Do any additional setup after loading the view, typically from a nib.
    }


}

