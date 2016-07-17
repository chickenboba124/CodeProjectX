//
//  ViewController.swift
//  SwitchSegmentActvity
//
//  Created by micheal kent on 7/17/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myActivityController: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func segmentSwitched(sender: UISegmentedControl) {
    
        let index: Int = sender.selectedSegmentIndex;
        let title: String = sender.titleForSegmentAtIndex(index)!
        print("title is \(title)")
    }
    
    @IBAction func switchChanged(sender: UISwitch) {
    
        if (sender.on == true) {
            if (myActivityController.isAnimating() == false) {
                myActivityController.startAnimating();
            }
        } else {
            if (myActivityController.isAnimating() == true) {
                myActivityController.stopAnimating();
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

