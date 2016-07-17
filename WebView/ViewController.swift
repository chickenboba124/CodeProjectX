//
//  ViewController.swift
//  WebView
//
//  Created by micheal kent on 7/17/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let url: NSURLRequest = NSURLRequest(
        
        let url: NSURL = NSURL(string: "http://www.google.com")!
        let urlRequest: NSURLRequest = NSURLRequest(URL: url)
        
        myWebView.loadRequest(urlRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

