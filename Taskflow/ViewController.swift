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
        
        createButton()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func createButton(){
        let window:UIWindow =  UIApplication.shared.delegate!.window!!
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: window.bounds.midX, y: (tabBarController?.view.bounds.minY)!, width: 64, height: 64)
        button.center = CGPoint(x: window.bounds.midX, y: (tabBarController?.view.bounds.maxY)! - 40.0)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
        button.backgroundColor = UIColor.blue
       var gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = button.layer.bounds
          gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
        gradientLayer.colors = [UIColor(red:0.90, green:0.22, blue:0.21, alpha:1.0).cgColor, UIColor(red:0.89, green:0.36, blue:0.36, alpha:1.0).cgColor]
        button.setImage(UIImage(named: "Timer"), for: UIControlState.normal)
        
        button.layer.insertSublayer(gradientLayer, below: button.imageView?.layer)
        
        
        
        
                //button.setImage(UIImage(named:"thumbsUp.png"), for: .normal)
        //button.addTarget(self, action: #selector(thumbsUpButtonPressed), for: .touchUpInside)
        view.addSubview(button)
    
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

