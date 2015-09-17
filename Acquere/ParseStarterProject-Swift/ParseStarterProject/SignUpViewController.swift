//
//  SignUpViewController.swift
//  ParseStarterProject-Swift
//
//  Created by Rahul Shrestha on 9/12/15.
//  Copyright (c) 2015 Parse. All rights reserved.
//

import UIKit
import TwitterKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailSignUpButton: UIButton!
    @IBOutlet weak var linkedInSignUpButton: UIButton!
   
    @IBOutlet weak var twitterSignUpButton: UIButton!
    
    @IBOutlet weak var facebookSignUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController!.navigationBar.hidden=false
        
        decorateButton(facebookSignUpButton,color: UIColor(red: 0.231, green: 0.349, blue: 0.596, alpha: 1.0) )
        decorateButton(twitterSignUpButton, color: UIColor(red: 0.333, green: 0.675, blue: 0.933, alpha: 1))
        decorateButton(linkedInSignUpButton, color: UIColor(red: 0, green: 0.467, blue: 0.71, alpha: 1))
        decorateButton(emailSignUpButton, color: UIColor(red: 0.961, green: 0.231, blue: 0.231, alpha: 1))
    }
   
    override func viewWillAppear(animated: Bool) {
        self.navigationController!.navigationBar.hidden=false
    }
   
    private func decorateButton(button: UIButton, color: UIColor) {
        
        button.setTitleColor(color, forState: UIControlState.Normal)
        button.layer.borderColor = color.CGColor
        button.backgroundColor = UIColor.clearColor()
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
    }

}
