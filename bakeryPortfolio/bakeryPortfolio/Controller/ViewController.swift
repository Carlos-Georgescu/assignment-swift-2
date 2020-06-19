//
//  ViewController.swift
//  bakeryPortfolio
//
//  Created by Carlos Georgescu on 2020-06-18.
//  Copyright © 2020 Carlos Georgescu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bakeryPhotos = BakeryPhotos()
    
    var num = String()
    var imagePressed = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        //var image = String()
        num =  sender.titleLabel!.text!
       //print(image)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! fullSizePage
        
        //print(num
        secondController.imageName = bakeryPhotos.getName(atPosition: Int(num)!)
        secondController.imageDes = bakeryPhotos.getDescription(atPosition: Int(num)!)
    }
    
}

