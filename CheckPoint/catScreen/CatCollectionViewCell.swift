//
//  CatCollectionViewCell.swift
//  CheckPoint
//
//  Created by Henry Lee on 10/18/18.
//  Copyright © 2018 Raffaele Lieto. All rights reserved.
//

import UIKit

class CatCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var catTitleLabel: UILabel!
    @IBOutlet weak var backgroundColorView: UIView!
    
    var cat: Cat? {
        didSet {
            self.updateUI()
        }
    }
    
    private func updateUI() {
        if let cat = cat {
            featuredImageView.image = cat.featuredImage
            catTitleLabel.text = cat.title
            backgroundColorView.backgroundColor = cat.color
        } else {
            featuredImageView.image = nil
            catTitleLabel.text = nil
            backgroundColorView.backgroundColor = nil
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 4.0
        layer.shadowRadius = 10.0
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 5, height: 10)
        self.clipsToBounds = false
    }
}
