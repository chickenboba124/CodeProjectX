//
//  ViewController.swift
//  DatePIck2
//
//  Created by micheal kent on 7/12/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePick: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendDateButton(sender: AnyObject) {
        
        let newDate:NSDate = datePick.date
        
        let formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        dateLabel.text = formatter.stringFromDate(newDate)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

