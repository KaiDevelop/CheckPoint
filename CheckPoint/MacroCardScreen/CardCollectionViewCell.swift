//
//  CardCollectionViewCell.swift
//  CheckPoint
//
//  Created by Henry Lee on 10/16/18.
//  Copyright © 2018 Raffaele Lieto. All rights reserved.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    // Public API
    var card: Card! {
        didSet {
            updateUI()
        }
    }
    // Private
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var cardTitleLabel: UILabel!
    
    private func updateUI(){
        cardTitleLabel?.text! = card.title
        featuredImageView?.image! = card.featuredImage
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
}
