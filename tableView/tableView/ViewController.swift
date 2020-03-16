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
       let data = [("Samsung M30S"), ("Redmi Note 8"), ("Realme 2"), ("Oppo X2")]
    let image = [UIImage(named: "image1"),UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4")]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "com.codepath.DemoPrototypeCell", for: indexPath) as! DemoPrototypeCell
        //let cityState = data[indexPath.row].components(separatedBy: ", ")
         cell.imageLabel.image=image[indexPath .row]
        cell.cityLabel.text = data[indexPath .row];
        return cell;
        }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self;
        tableView.delegate=self;
        tableView.estimatedRowHeight=100
        tableView.rowHeight = UITableView.automaticDimension
        // Do any additional setup after loading the view, typically from a nib.
    }


}

