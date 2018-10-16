//
//  Card.swift
//  CheckPoint
//
//  Created by Henry Lee on 10/16/18.
//  Copyright © 2018 Raffaele Lieto. All rights reserved.
//

import UIKit

class Card {
    // Public API
    var title = ""
    var description = ""
    // var addDetailOne = 0
    // var addDetailTwo = 0
    var featuredImage: UIImage!
    
    init(title: String, description: String, featuredImage: UIImage!) {
        self.title = title
        self.description = description
        self.featuredImage = featuredImage
        // addDetailOne = 1
        // addDetailTwo = 1
    }
    
    // Private
    
    static func createCards() -> [Card] {
        return [
            Card(title: "Payment Details", description: "💳", featuredImage: UIImage(named: "Contours_Blue")!),
            Card(title: "Location Details", description: "🇮🇹", featuredImage: UIImage(named: "Contours_Red")!),
            Card(title: "Browsing History", description: "👩🏻‍💻👨🏻‍💻", featuredImage: UIImage(named: "Contours_Teal")!),
        ]
    }
}
