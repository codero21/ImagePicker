//
//  ViewController.swift
//  ImagePicker
//
//  Created by Rollin Francois on 9/8/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cameraButton: UIButton!
    

    // MARK: Life-Cycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: Action Methods

    @IBAction func onCamera(_ sender: Any) {
        
        let imagePicker: UIImagePickerController = UIImagePickerController()
        imagePicker.sourceType = UIImagePickerControllerSourceType.camera
        imagePicker.delegate = self
        
        if UIDevice().userInterfaceIdiom == UIUserInterfaceIdiom.pad {
            imagePicker.modalPresentationStyle = UIModalPresentationStyle.popover
            self.present(imagePicker, animated: true, completion: nil)
            
            let presentationController: UIPopoverPresentationController = imagePicker.popoverPresentationController!
            
            presentationController.permittedArrowDirections = UIPopoverArrowDirection.left
            presentationController.sourceView = self.view
            presentationController.sourceRect = cameraButton.frame
            
        } else {
            self.present(imagePicker, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func onPhotoLibrary(_ sender: Any) {
        
        let imagePicker: UIImagePickerController = UIImagePickerController()
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePicker.delegate = self
        
        if UIDevice().userInterfaceIdiom == UIUserInterfaceIdiom.pad {
            imagePicker.modalPresentationStyle = UIModalPresentationStyle.popover
            self.present(imagePicker, animated: true, completion: nil)
            
            let presentationController: UIPopoverPresentationController = imagePicker.popoverPresentationController!
            
            presentationController.permittedArrowDirections = UIPopoverArrowDirection.left
            presentationController.sourceView = self.view
            presentationController.sourceRect = cameraButton.frame
            
        } else {
            self.present(imagePicker, animated: true, completion: nil)
        }
        
    }
    

}

