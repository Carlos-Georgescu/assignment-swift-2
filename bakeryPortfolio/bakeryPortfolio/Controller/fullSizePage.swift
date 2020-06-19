//
//  fullSizePage.swift
//  bakeryPortfolio
//
//  Created by Carlos Georgescu on 2020-06-18.
//  Copyright © 2020 Carlos Georgescu. All rights reserved.
//

import UIKit
//import "ViewController.swift"

class fullSizePage: UIViewController {

    var imageName = String()
    var imageDes = String()
    
    
    @IBOutlet weak var fullSizeImage: UIImageView!
    @IBOutlet weak var photoDescription: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullSizeImage.image = UIImage(named: imageName)
        photoDescription.text = imageDes
    }

}
