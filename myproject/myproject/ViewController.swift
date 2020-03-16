//
//  ViewController.swift
//  myproject
//
//  Created by Auriga on 06/03/20.
//  Copyright © 2020 Auriga. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer)
    {
        // hide the keyboard
        nameTextField.resignFirstResponder();
        
        let imagePickerController = UIImagePickerController();
        imagePickerController.sourceType = .photoLibrary;
        imagePickerController.delegate = self;
        
        present(imagePickerController, animated: true, completion: nil)
        
        
    }
    // MARK: UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
     {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as?
            UIImage else
                   {
                fatalError("Exepected dictionary, but was provided \(info)")
                  }
        
        // display the selected image
        photoImageView.image = selectedImage;
        dismiss(animated: true, completion: nil)
     }
}

