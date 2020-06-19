//
//  BakeryPhotos.swift
//  bakeryPortfolio
//
//  Created by Carlos Georgescu on 2020-06-18.
//  Copyright © 2020 Carlos Georgescu. All rights reserved.
//

import Foundation

struct BakeryPhotos {
//a bunch of images with their information
    let imageArray = [
         ImageInfo(n: "cake", d: "With whipped cream!"),
        ImageInfo(n: "cookies", d: "Chocolate chip cookies!"),
        ImageInfo(n: "chocolate", d: "Came from swiss")
    ]
    
     func getName(atPosition: Int) -> String{
        return imageArray[atPosition].name
    }
    
     func getDescription(atPosition: Int) -> String{
        return imageArray[atPosition].description
    }
}

