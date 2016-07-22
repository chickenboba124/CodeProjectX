//
//  TableViewController.swift
//  PropsView7
//
//  Created by micheal kent on 7/18/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var data:NSMutableData = NSMutableData()
    var TableData:[String] = [];
    var TableDataCity:[String] = [];
    @IBOutlet var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        get_data_from_url("http://alexhawley.net/properties/index.php")
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableData.count;
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("propertyCell", forIndexPath: indexPath)
        
        let swiftColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        cell.textLabel?.textColor = swiftColor
        cell.textLabel?.text = TableData[indexPath.row]
        
        
        let image : UIImage = (UIImage(named:"buying-a-house-property_318-33340"))!
        
        cell.imageView!.image = image
        
        return cell
    }
    func get_data_from_url(url:String)
    {
        let url = NSURL(string: url)
        var request: NSURLRequest = NSURLRequest(URL: url!)
        var connection: NSURLConnection = NSURLConnection(request: request, delegate: self, startImmediately: false)!
        connection.start()
    }
    func connection(didReceiveResponse: NSURLConnection!, didReceiveResponse response: NSURLResponse!) {
        self.data = NSMutableData()
    }
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!) {
        self.data.appendData(data)
    }
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        var err: NSError
        do {
            var json: AnyObject? = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers)
            if let properties_list = json as? NSArray {
                for (var i = 0; i < properties_list.count ; i++ ) {
                    if let prop_obj = properties_list[i] as? NSDictionary {
                        if let address = prop_obj["address"] as? String {
                            if let city = prop_obj["city"] as? String {
                                if let state = prop_obj["state"] as? String {
                                    var city_state = city + ", " + state
                                    self.TableData.append(address)
                                    self.TableDataCity.append(city_state);
                                }
                            }
                        }
                    }
                }
                self.tableview?.performSelectorOnMainThread(Selector("reloadData"), withObject: nil, waitUntilDone: true)
            }
        } catch {
            
        }
    }
    func extract_json(jsonData:NSData) {
        let options: NSJSONReadingOptions = NSJSONReadingOptions()
        var hasError = false
        do {
            let json: AnyObject? = try NSJSONSerialization.JSONObjectWithData(jsonData, options: options)
            if let properties_list = json as? NSArray {
                for (var i = 0; i < properties_list.count ; i++ ) {
                    if let prop_obj = properties_list[i] as? NSDictionary {
                        if let address = prop_obj["address"] as? String {
                            TableData.append(address)
                        }
                    }
                }
            }
        } catch {
            
        }
    }
    func do_table_refresh() {
        dispatch_async(dispatch_get_main_queue(), {
            self.tableview?.reloadData()
            return
        })
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
