//
//  ViewController.swift
//  ButtonAlert
//
//  Created by micheal kent on 7/13/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickedButton(sender: AnyObject) {
        
        let alert:UIAlertController = UIAlertController(title: "Button Tapped!", message: "A button was tapped", preferredStyle: UIAlertControllerStyle.Alert)
        
        let alertAction: UIAlertAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default) { (a: UIAlertAction) -> Void in
            print("user clicked ok")
        }
        let alertAction1: UIAlertAction = UIAlertAction(title: "Deny", style: UIAlertActionStyle.Default) { (a: UIAlertAction) -> Void in
            print("user clicked deny")
        }
        alert.addAction(alertAction)
        alert.addAction(alertAction1)
        self.presentViewController(alert, animated: true) { 
            () -> Void in
            print("alert presented")
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

