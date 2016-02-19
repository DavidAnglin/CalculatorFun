//
//  ViewController.swift
//  CalculatorFun
//
//  Created by David Anglin on 2/16/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

import UIKit
import Darwin

@IBDesignable
class ViewController: UIViewController {
    
    var height: CGFloat = 0.0
    var width: CGFloat = 0.0
    var screenWidth: CGFloat = 0.0
    
    var display: UILabel! = UILabel()
    
    var firstNumber = Double()
    var secondNumber = Double()
    var operation = ""
    var userIsTypingNumber = false
    var result = Double()
    var decimalIsPressed = false
    
    let x = Double(M_PI)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label()
        getDimensions()
        clearButton()
        decimal()
        pi()
        equal()
        sin()
        cos()
        add()
        subtract()
        divide()
        times()
        root()
        btn0()
        btn1()
        btn2()
        btn3()
        btn4()
        btn5()
        btn6()
        btn7()
        btn8()
        btn9()
        
    }    

    func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsTypingNumber {
            display.text = display.text! + digit
        } else {
            display.text = digit
            userIsTypingNumber  = true
        }
    }

    func solve(sender: UIButton) {
        secondNumber = (display.text! as NSString).doubleValue
        userIsTypingNumber = false
      enter()
    }
    
    func pis(sender: UIButton) {
        userIsTypingNumber = true
            if display.text != "0" {
                enter()
                display.text = "\(x)"
                enter()
            } else {
                display.text = "\(x)"
                enter()
            }
        }
    
    func enter() {
        userIsTypingNumber = false
        decimalIsPressed = false
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if  operation == "−" {
            result = firstNumber-secondNumber
        } else if  operation == "×" {
            result = firstNumber * secondNumber
        } else if operation == "÷" {
            result = firstNumber / secondNumber
        } else if operation == "√" {
            result = sqrt(firstNumber)
            //        } else if operation == "cos" {
            //            result = cos(firstNumber)
        } else if operation == "sin" {
            result = sind(secondNumber)
        }
        display.text = "\(result)"
    }
    
    func point(sender:UIButton) {
        userIsTypingNumber = true
        if decimalIsPressed == false {
            display.text = display.text! + "."
            decimalIsPressed = true
        }
    }
    
    
    
   func operation(sender: UIButton) {
        userIsTypingNumber = false
        firstNumber = (display.text! as NSString).doubleValue
        operation = sender.currentTitle!
    }
    
    func empty(sender: UIButton) {
        firstNumber = 0
        secondNumber = 0
        result = 0
        display.text = "\(0)"
    }
    
    func getDimensions() {
        let screenSize = UIScreen.mainScreen().bounds
        height = screenSize.height / 6
        width = screenSize.width / 5
        screenWidth = screenSize.width
    }
    
    func label()  {
        getDimensions()
        display.frame = CGRect(x: width * 0, y: height * 0, width: screenWidth, height: height)
        display.textAlignment = NSTextAlignment.Center
        display.text = "0"
        display.font = UIFont(name: "Times New Roman", size: 36)
        display.backgroundColor = UIColor.grayColor()
        display.textColor = UIColor.whiteColor()
        self.view.addSubview(display)
    }

    
    func btn0() {
        let btn0 = UIButton(type: UIButtonType.Custom)
        btn0.frame = CGRectMake(width * 1, height * 5, width, height)
        btn0.backgroundColor = UIColor.orangeColor()
        btn0.setTitle("0", forState: UIControlState.Normal)
        btn0.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn0.tag = 0
        btn0.layer.borderWidth = 1
        btn0.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn0)
    }

    func btn1() {
        let btn1 = UIButton(type: UIButtonType.Custom)
        btn1.frame = CGRectMake(width * 0, height * 4, width, height)
        btn1.backgroundColor = UIColor.orangeColor()
        btn1.setTitle("1", forState: UIControlState.Normal)
        btn1.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn1.tag = 1
        btn1.layer.borderWidth = 1
        btn1.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn1)
    }
    
    func btn2() {
        let btn2 = UIButton(type: UIButtonType.Custom)
        btn2.frame = CGRectMake(width * 1, height * 4, width, height)
        btn2.backgroundColor = UIColor.orangeColor()
        btn2.setTitle("2", forState: UIControlState.Normal)
        btn2.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn2.tag = 2
        btn2.layer.borderWidth = 1
        btn2.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn2)
    }
    
    func btn3() {
        let btn3 = UIButton(type: UIButtonType.Custom)
        btn3.frame = CGRectMake(width * 2, height * 4, width, height)
        btn3.backgroundColor = UIColor.orangeColor()
        btn3.setTitle("3", forState: UIControlState.Normal)
        btn3.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn3.tag = 3
        btn3.layer.borderWidth = 1
        btn3.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn3)
    }
    
    func btn4() {
        let btn4 = UIButton(type: UIButtonType.Custom)
        btn4.frame = CGRectMake(width * 0, height * 3, width, height)
        btn4.backgroundColor = UIColor.orangeColor()
        btn4.setTitle("4", forState: UIControlState.Normal)
        btn4.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn4.tag = 4
        btn4.layer.borderWidth = 1
        btn4.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn4)
    }
 
    func btn5() {
        let btn5 = UIButton(type: UIButtonType.Custom)
        btn5.frame = CGRectMake(width * 1, height * 3, width, height)
        btn5.backgroundColor = UIColor.orangeColor()
        btn5.setTitle("5", forState: UIControlState.Normal)
        btn5.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn5.tag = 5
        btn5.layer.borderWidth = 1
        btn5.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn5)
    }
    
    func btn6() {
        let btn6 = UIButton(type: UIButtonType.Custom)
        btn6.frame = CGRectMake(width * 2, height * 3, width, height)
        btn6.backgroundColor = UIColor.orangeColor()
        btn6.setTitle("6", forState: UIControlState.Normal)
        btn6.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn6.tag = 6
        btn6.layer.borderWidth = 1
        btn6.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn6)
    }
    
    func btn7() {
        let btn7 = UIButton(type: UIButtonType.Custom)
        btn7.frame = CGRectMake(width * 0, height * 2, width, height)
        btn7.backgroundColor = UIColor.orangeColor()
        btn7.setTitle("7", forState: UIControlState.Normal)
        btn7.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn7.tag = 7
        btn7.layer.borderWidth = 1
        btn7.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn7)
    }
    
    func btn8() {
        let btn8 = UIButton(type: UIButtonType.Custom)
        btn8.frame = CGRectMake(width * 1, height * 2, width, height)
        btn8.backgroundColor = UIColor.orangeColor()
        btn8.setTitle("8", forState: UIControlState.Normal)
        btn8.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn8.tag = 8
        btn8.layer.borderWidth = 1
        btn8.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn8)
    }
    
    func btn9() {
        let btn9 = UIButton(type: UIButtonType.Custom)
        btn9.frame = CGRectMake(width * 2, height * 2, width, height)
        btn9.backgroundColor = UIColor.orangeColor()
        btn9.setTitle("9", forState: UIControlState.Normal)
        btn9.addTarget(self, action: Selector("appendDigit:"), forControlEvents: UIControlEvents.TouchUpInside)
        btn9.tag = 9
        btn9.layer.borderWidth = 1
        btn9.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn9)
    }
    
    func decimal() {
        let decimal = UIButton(type: UIButtonType.Custom)
        decimal.frame = CGRectMake(width * 0, height * 5, width, height)
        decimal.backgroundColor = UIColor.orangeColor()
        decimal.setTitle(".", forState: UIControlState.Normal)
        decimal.addTarget(self, action: Selector("point:"), forControlEvents: UIControlEvents.TouchUpInside)
        decimal.tag = 10
        decimal.layer.borderWidth = 1
        decimal.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(decimal)
    }
    
    func equal() {
        let equal = UIButton(type: UIButtonType.Custom)
        equal.frame = CGRectMake(width * 2, height * 5, width, height)
        equal.backgroundColor = UIColor.orangeColor()
        equal.setTitle("=", forState: UIControlState.Normal)
        equal.addTarget(self, action: Selector("solve:"), forControlEvents: UIControlEvents.TouchUpInside)
        equal.tag = 11
        equal.layer.borderWidth = 1
        equal.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(equal)
    }
    
    func times() {
        let times = UIButton(type: UIButtonType.Custom)
        times.frame = CGRectMake(width * 3, height * 2, width, height)
        times.backgroundColor = UIColor.orangeColor()
        times.setTitle("×", forState: UIControlState.Normal)
        times.addTarget(self, action: Selector("operation:"), forControlEvents: UIControlEvents.TouchUpInside)
        times.tag = 12
        times.layer.borderWidth = 1
        times.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(times)
    }
    
    func divide() {
        let divide = UIButton(type: UIButtonType.Custom)
        divide.frame = CGRectMake(width * 3, height * 3, width, height)
        divide.backgroundColor = UIColor.orangeColor()
        divide.setTitle("÷", forState: UIControlState.Normal)
        divide.addTarget(self, action: Selector("operation:"), forControlEvents: UIControlEvents.TouchUpInside)
        divide.tag = 13
        divide.layer.borderWidth = 1
        divide.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(divide)
    }
    
    func add() {
        let add = UIButton(type: UIButtonType.Custom)
        add.frame = CGRectMake(width * 3, height * 4, width, height)
        add.backgroundColor = UIColor.orangeColor()
        add.setTitle("+", forState: UIControlState.Normal)
        add.addTarget(self, action: Selector("operation:"), forControlEvents: UIControlEvents.TouchUpInside)
        add.tag = 14
        add.layer.borderWidth = 1
        add.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(add)
    }
    
    func subtract() {
        let subtract = UIButton(type: UIButtonType.Custom)
        subtract.frame = CGRectMake(width * 3, height * 5, width, height)
        subtract.backgroundColor = UIColor.orangeColor()
        subtract.setTitle("−", forState: UIControlState.Normal)
        subtract.addTarget(self, action: Selector("operation:"), forControlEvents: UIControlEvents.TouchUpInside)
        subtract.tag = 15
        subtract.layer.borderWidth = 1
        subtract.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(subtract)
    }
    
    func sin() {
        let sin = UIButton(type: UIButtonType.Custom)
        sin.frame = CGRectMake(width * 4, height * 2, width, height)
        sin.backgroundColor = UIColor.orangeColor()
        sin.setTitle("sin", forState: UIControlState.Normal)
        sin.addTarget(self, action: Selector("operation:"), forControlEvents: UIControlEvents.TouchUpInside)
        sin.tag = 16
        sin.layer.borderWidth = 1
        sin.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(sin)
    }
    
    func cos() {
        let cos = UIButton(type: UIButtonType.Custom)
        cos.frame = CGRectMake(width * 4, height * 3, width, height)
        cos.backgroundColor = UIColor.orangeColor()
        cos.setTitle("cos", forState: UIControlState.Normal)
        cos.addTarget(self, action: Selector("operation:"), forControlEvents: UIControlEvents.TouchUpInside)
        cos.tag = 17
        cos.layer.borderWidth = 1
        cos.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(cos)
    }
    
    
    func pi() {
        let pi = UIButton(type: UIButtonType.Custom)
        pi.frame = CGRectMake(width * 4, height * 4, width, height)
        pi.backgroundColor = UIColor.orangeColor()
        pi.setTitle("π", forState: UIControlState.Normal)
        pi.addTarget(self, action: Selector("pis:"), forControlEvents: UIControlEvents.TouchUpInside)
        pi.tag = 18
        pi.layer.borderWidth = 1
        pi.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(pi)
    }
    
    func root() {
        let root = UIButton(type: UIButtonType.Custom)
        root.frame = CGRectMake(width * 4, height * 5, width, height)
        root.backgroundColor = UIColor.orangeColor()
        root.setTitle("√", forState: UIControlState.Normal)
        root.addTarget(self, action: Selector("operation:"), forControlEvents: UIControlEvents.TouchUpInside)
        root.tag = 19
        root.layer.borderWidth = 1
        root.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(root)
    }
    
    func clearButton() {
        let clear = UIButton(type: UIButtonType.Custom)
        clear.frame = CGRectMake(width * 0, height * 1, screenWidth, height)
        clear.backgroundColor = UIColor.orangeColor()
        clear.setTitle("Clear", forState: UIControlState.Normal)
        clear.addTarget(self, action: Selector("empty:"), forControlEvents: UIControlEvents.TouchUpInside)
        clear.tag = 20
        clear.layer.borderWidth = 1
        clear.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(clear)
        }
    }


func sind(degrees: Double) -> Double {
    return sin(degrees * M_PI / 180.0)
}



