//
//  ViewController.swift
//  Taskflow
//
//  Created by Akhil on 8/7/17.
//  Copyright © 2017 IntStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //createButton()
               // Do any additional setup after loading the view, typically from a nib.
    }
    func createButton(){
        let window:UIWindow =  UIApplication.shared.delegate!.window!!
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: window.bounds.midX, y: (100.0), width: 64, height: 64)
        button.center = CGPoint(x: window.bounds.midX, y: (self.tabBarController?.view.bounds.maxY)! + 40.0)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        button.backgroundColor = UIColor.blue
       var gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = button.layer.bounds
          gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.colors = [UIColor(red:1.00, green:0.37, blue:0.43, alpha:1.0).cgColor, UIColor(red:1.00, green:0.76, blue:0.44, alpha:1.0).cgColor]
        button.setImage(UIImage(named: "Timer"), for: UIControlState.normal)
        button.alpha = 1.0
        button.layer.insertSublayer(gradientLayer, below: button.imageView?.layer)
        
        
        
        
                //button.setImage(UIImage(named:"thumbsUp.png"), for: .normal)
        //button.addTarget(self, action: #selector(thumbsUpButtonPressed), for: .touchUpInside)
        view.addSubview(button)
      /* UIView.animate(withDuration: 0.6, delay: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {
        button.frame = CGRect(x: window.bounds.midX, y: (self.tabBarController?.view.bounds.minY)!, width: 64, height: 64)
        button.center = CGPoint(x: window.bounds.midX, y: (self.tabBarController?.view.bounds.maxY)! - 40.0)
        button.alpha = 1.0
       }, completion: nil)
        
        */
        
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity:  10, options: .curveEaseInOut, animations: { 
            button.frame = CGRect(x: window.bounds.midX, y: (self.tabBarController?.view.bounds.minY)!, width: 64, height: 64)
            button.center = CGPoint(x: window.bounds.midX, y: (self.tabBarController?.view.bounds.maxY)! - 40.0)
        }, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        createButton()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

