//
//  ViewController.swift
//  ImagePicker
//
//  Created by Rollin Francois on 9/8/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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
    }
    
    @IBAction func onPhotoLibrary(_ sender: Any) {
    }
    

}

