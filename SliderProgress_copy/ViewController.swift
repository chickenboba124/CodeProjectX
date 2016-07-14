//
//  ViewController.swift
//  SliderProgress
//
//  Created by micheal kent on 7/13/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myProgress: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sliderChanged(sender: UISlider) {
    
        let percent:Float = Float(sender.value / sender.maximumValue)
        myProgress.progress = percent
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

