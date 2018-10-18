//
//  Cat.swift
//  CheckPoint
//
//  Created by Henry Lee on 10/18/18.
//  Copyright © 2018 Raffaele Lieto. All rights reserved.
//

import UIKit

class Cat {
    // Public
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor) {
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }
    
    // Private
    static func fetchCats() -> [Cat] {
        return [
            Cat(title: "Payment Details", featuredImage: UIImage(named: "Contours_Blue")!, color: UIColor(red: 55/255.0, green: 55/255.0, blue: 200/255.0, alpha: 0.8)),
            Cat(title: "Browsing Data", featuredImage: UIImage(named: "Contours_Teal")!, color: UIColor(red: 55/255.0, green: 200/255.0, blue: 55/255.0, alpha: 0.8)),
            Cat(title: "Location Data", featuredImage: UIImage(named: "Contours_Red")!, color: UIColor(red: 200/255.0, green: 55/255.0, blue: 55/255.0, alpha: 0.8))
        ]
    }
}
