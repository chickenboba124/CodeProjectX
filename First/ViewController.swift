//
//  ViewController.swift
//  First
//
//  Created by micheal kent on 7/11/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonClicked(sender: AnyObject) {
    
        print("button clicked");
        label.text = "Hello, \(textField.text!)"
        textField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //textField.delegate = self
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()
        return false  // don't do what text field should return normally does
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

