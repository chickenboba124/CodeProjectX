//
//  ViewController.swift
//  Calculator
//
//  Created by micheal kent on 7/24/16.
//  Copyright © 2016 micheal kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showText: UITextField!
    
    var memberOne: Int32 = 0
    var memberOneWasSet = false
    
    var memberTwo: Int32 = 0
    var memberTwoWasSet = false
    
    var wasAnswered = false
    
    var equationType = "Empty"
    
    var showTextValue:String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickButtonOne(sender: AnyObject) {
    

        if wasAnswered == false {
            showTextValue += "1"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 1
            showTextValue = "1"
            
            showText.text = showTextValue
            wasAnswered = false
        }
    }
    
    @IBAction func clickButton2(sender: AnyObject) {
    
        if wasAnswered == false {
            showTextValue += "2"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 2
            showTextValue = "2"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    
    @IBAction func clickButton3(sender: AnyObject) {
    
        if wasAnswered == false {
            showTextValue += "3"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 3
            showTextValue = "3"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    
    @IBAction func clickButton4(sender: AnyObject) {
    
        if wasAnswered == false {
            showTextValue += "4"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 4
            showTextValue = "4"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    
    @IBAction func clickButton5(sender: AnyObject) {
    
        if wasAnswered == false {
            showTextValue += "5"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 5
            showTextValue = "5"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    
    @IBAction func clickButton6(sender: AnyObject) {
    
        if wasAnswered == false {
            showTextValue += "6"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 6
            showTextValue = "6"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    
    @IBAction func clickButton7(sender: AnyObject) {
        if wasAnswered == false {
            showTextValue += "7"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 7
            showTextValue = "7"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    
    @IBAction func clickButton8(sender: AnyObject) {
    
        if wasAnswered == false {
            showTextValue += "8"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 8
            showTextValue = "8"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    
    @IBAction func clickButton9(sender: AnyObject) {
    
        if wasAnswered == false {
            showTextValue += "9"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 9
            showTextValue = "9"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    
    @IBAction func clickButton0(sender: AnyObject) {
    
    
        if wasAnswered == false {
            showTextValue += "0"
            if memberOneWasSet == false {
                let newMember:Int32 = Int32(showTextValue)!
                memberOne = newMember
                
            }
            else {
                let newMember2:Int32 = Int32(showTextValue)!
                memberTwo = newMember2
                
            }
            showText.text = showTextValue
        }
        else {
            memberOne = 0
            showTextValue = "0"
            
            showText.text = showTextValue
            wasAnswered = false
        }

    }
    @IBAction func clickAdd(sender: AnyObject) {
    
        equationType = "Add"
        showTextValue = ""
        memberOneWasSet = true
        showText.text = showTextValue
    }
    
    @IBAction func clickMinus(sender: AnyObject) {
    
        equationType = "Minus"
        showTextValue = ""
        memberOneWasSet = true
        showText.text = showTextValue
    }
    
    
    @IBAction func clickMultiply(sender: AnyObject) {
    
        equationType = "Multiply"
        showTextValue = ""
        memberOneWasSet = true
        showText.text = showTextValue
    }
    
    
    @IBAction func clickDivide(sender: AnyObject) {
    
        equationType = "Divide"
        showTextValue = ""
        memberOneWasSet = true
        showText.text = showTextValue
    }
    
    func roundToPlaces(value:Double, places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(value * divisor) / divisor
    }
    
    @IBAction func clickedEquals(sender: AnyObject) {
    
        var answer:Int32 = 0
        var answer2:Double = 0.0
        
        var memberOneD:Double = 0.0000
        var memberTwoD:Double = 0.0000
        
        switch equationType {
            
            case "Add":
            
                answer = memberOne + memberTwo
                showTextValue = String(answer)
            case "Minus":
            
                answer = memberOne - memberTwo
                showTextValue = String(answer)
            case "Multiply":
            
                print("memberOne: ", memberOne)
                print("memberTow: ", memberTwo)
                answer = memberOne * memberTwo
                print("Answer: ", answer)
                showTextValue = String(answer)
            
            case "Divide":
            
                if memberTwo == 0 {
                    answer2 = 0
                } else {
                    
                    memberOneD = Double(memberOne)
                    memberTwoD = Double(memberTwo)
                    
                    answer2 = roundToPlaces(memberOneD / memberTwoD,  places: 4)
                    showTextValue = String(answer2)
                }
            default:
            
            break
        }
        memberOneWasSet = false
        wasAnswered = true
        if equationType != "Divide" {
            showText.text = showTextValue
        }
        else {
            if answer2 == 0 {
                showTextValue = "N/A"
            }
            showText.text = showTextValue
        }
    }
    
    @IBAction func clickClear(sender: AnyObject) {
    
        memberOne = 0
        memberOneWasSet = false
        
        memberTwo = 0
        memberTwoWasSet = false
        
        wasAnswered = false
        
        equationType = "Empty"
        
        showTextValue = ""
        showText.text = showTextValue
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

