//
//  GradientViewForButton.swift
//  CheckPoint
//
//  Created by Louis on 18/10/2018.
//  Copyright © 2018 Raffaele Lieto. All rights reserved.
//

import UIKit

@IBDesignable
class GradientViewForButton: UIButton {

    @IBInspectable var FirstColor : UIColor = UIColor.clear {
        didSet{
            updateView()
            
        }
    }
    @IBInspectable var SecondColor : UIColor = UIColor.clear{
        didSet{
            updateView()
            
        }
    }
    
    override class var layerClass : AnyClass {
        get{
            return CAGradientLayer.self
        }
    }
    
    func updateView(){
        let layer = self.layer as! CAGradientLayer
        layer.colors = [FirstColor.cgColor,SecondColor.cgColor]
        layer.locations = [-0.8]
        
    }

}
