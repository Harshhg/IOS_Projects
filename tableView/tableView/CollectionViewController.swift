//
//  CollectionViewController.swift
//  tableView
//
//  Created by Auriga on 16/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController , UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let data = [("Samsung M30S"), ("Redmi Note 8 Pro"), ("Realme 5 Pro"), ("Iphone 11 Pro Max"), ("One Plus 7 Pro")]
          let price = [("13,999"), ("14,999"), ("8,999"), ("1,19,999"),("33,999")]
          let image = [UIImage(named: "image1"),UIImage(named: "image2"),UIImage(named: "image3"),UIImage(named: "image4"),UIImage(named: "image5")]
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "com.codepath.CollectionViewCell", for: indexPath) as! CollectionViewCell
        // Do any custom modifications you your cell, referencing the outlets you defined in the Custom cell file.
         
        cell.imageField.image=image[indexPath .row]
         cell.labelField.text = data[indexPath .row];
        cell.priceField.text = price[indexPath .row]+"/-"

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
    let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
        vc?.image = image[indexPath .row]!
        vc?.name = data[indexPath .row];
        vc?.price = price[indexPath .row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
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
