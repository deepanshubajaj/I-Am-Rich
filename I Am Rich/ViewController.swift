//
//  ViewController.swift
//  I Am Rich
//
//  Created by Deepanshu Bajaj on 27/08/24.
//

import UIKit

class ViewController: UIViewController {

    // Outlets for Label constraints
    @IBOutlet weak var LabelTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var LabelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var LabelTopConstraint: NSLayoutConstraint!
    
    // Outlets for Wings Image constraints
    @IBOutlet weak var wingsImageLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var wingsImageTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var wingsImageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var wingsImageHeightConstraint: NSLayoutConstraint!
    
    // Outlets for Diamond Image constraints
    @IBOutlet weak var diamondImageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var diamondImageHeightConstraint: NSLayoutConstraint!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manageViews()
    }
    
    func manageViews() {
        let screenWidth =  UIScreen.main.bounds.width
        let screenHeight =  UIScreen.main.bounds.height
        
        // Check for Landscape or Portrait screen
        if UIDevice.current.orientation.isLandscape {
                        
            // Label Constraints
            self.LabelTopConstraint.constant = screenHeight / 20
            let labelWidth = screenWidth / 1.2
            self.LabelTrailingConstraint.constant = (screenWidth / 4 ) - labelWidth / 5
            self.LabelLeadingConstraint.constant = screenWidth / 3
            
            // Diamond Image constraints
            let diamondWidth = screenWidth / 3
            let diamondHeight = screenWidth / 3
            self.diamondImageWidthConstraint.constant = diamondWidth
            self.diamondImageHeightConstraint.constant = diamondHeight
            
            // Wings image Constraints
            let wingsImageWidth = screenWidth / 7
            self.wingsImageTopConstraint.constant = diamondHeight + (diamondHeight / 80)
            self.wingsImageWidthConstraint.constant = wingsImageWidth
            self.wingsImageHeightConstraint.constant = wingsImageWidth
            
        } else {
                                   
            // Label Constraints
            self.LabelTopConstraint.constant = screenHeight / 10
            let labelWidth = screenWidth / 1.2
            self.LabelTrailingConstraint.constant = (screenWidth / 2 - labelWidth / 2)
            self.LabelLeadingConstraint.constant = (screenWidth / 2 - labelWidth / 4)
            
            // Wings image Constraints
            self.wingsImageTopConstraint.constant = ( screenHeight / 1 - screenHeight / 8 ) / 2
            self.wingsImageLeadingConstraint.constant = ( screenWidth - screenWidth ) / 25
            self.wingsImageWidthConstraint.constant = screenWidth
            self.wingsImageHeightConstraint.constant = screenWidth
 
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        self.manageViews()
        
    }


}

