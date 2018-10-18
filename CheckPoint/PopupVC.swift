//
//  PopupVC.swift
//  CheckPoint
//
//  Created by Louis on 18/10/2018.
//  Copyright © 2018 Raffaele Lieto. All rights reserved.
//

import UIKit

class PopupVC: UIViewController {
    
    
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myDynamicLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    @IBAction func closePopup(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myDynamicLabel.text = "Processing your purchase orders. Information relating to e-commerce orders may be used for processing the purchase order and related after-sales services, including customer support and re-delivery. \nIn addition, the order number is used to cross check the order with the delivery partner as well as the actual delivery of the parcel. \nThe receipt details, including name, address, phone number and postal code are for delivery purposes. The email address is used to send parcel tracking information to the user. \nThe list of purchased item(s) is used for printing the invoice and allowing users to see what is in the parcel.\nProcessing your purchase orders. Information relating to e-commerce orders may be used for processing the purchase order and related after-sales services, including customer support and re-delivery. \nIn addition, the order number is used to cross check the order with the delivery partner as well as the actual delivery of the parcel. \nThe receipt details, including name, address, phone number and postal code are for delivery purposes. The email address is used to send parcel tracking information to the user. \nThe list of purchased item(s) is used for printing the invoice and allowing users to see what is in the parcel."
        
        myDynamicLabel.sizeToFit()
    }
    
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    
}
