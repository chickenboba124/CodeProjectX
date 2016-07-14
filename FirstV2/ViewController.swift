//
//  ViewController.swift
//  FirstV2
//
//  Created by micheal kent on 7/12/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var getDatePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendDateButton(sender: AnyObject) {
        
        let date:NSDate = getDatePicker.date
        let formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        dateLabel.text = formatter.stringFromDate(date)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

