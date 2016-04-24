//
//  ViewController.swift
//  SwiftAnimation_Login
//
//  Created by zhoupushan on 15/11/13.
//  Copyright © 2015年 PS. All rights reserved.
//

import UIKit
let screenWidth = UIScreen.mainScreen().bounds.size.width
class ViewController: UIViewController
{

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var sunView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var monthView: UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
//        view.backgroundColor = UIColor(red: 1.0, green: 0, blue: 0, alpha: 0.2)
    }

    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        nameTextField.frame.origin.x -= screenWidth
        passwordTextField.frame.origin.x -= screenWidth
        loginButton.frame.origin.y += 60
        loginButton.alpha = 0.0
    }
    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.5) { () -> Void in
            self.nameTextField.frame.origin.x += screenWidth
//            self.passwordTextField.frame.origin.x += screenWidth
        }
        
        UIView.animateWithDuration(0.5, delay: 0.3, options: [UIViewAnimationOptions.AllowUserInteraction], animations: { () -> Void in
            self.passwordTextField.frame.origin.x += screenWidth
            self.sunView.transform = CGAffineTransformRotate(self.sunView.transform, CGFloat(M_PI * 1))
            self.monthView.transform = CGAffineTransformScale(self.monthView.transform, 0.5, 0.5)
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay: 0.8, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options:.AllowUserInteraction , animations: { () -> Void in
            
            self.loginButton.frame.origin.y -= 60
            self.loginButton.alpha = 1.0
            
            }, completion: nil)
    }
    
    
    @IBAction func login(sender: AnyObject)
    {

    }
    
    
}

