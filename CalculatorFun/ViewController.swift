//
//  ViewController.swift
//  CalculatorFun
//
//  Created by David Anglin on 2/16/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var bounds = UIScreen.mainScreen().bounds
        var width = bounds.size.width
        var height = bounds.size.height
        var buttonWidth = bounds.size.width / 6
        var buttonHeight = bounds.size.height / 6
        display()
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
        
        

    func display() {
        let display = UILabel()
        display.frame = CGRectMake(0, 0, 200, 21)
        display.center = CGPointMake(160, 284)
        display.textAlignment = NSTextAlignment.Right
        display.text = "0"
        self.view.addSubview(display)
    }
    
    func btn0() {
        let btn0 = UIButton()
        btn0.frame = CGRectMake(75, 620, buttonWidth, buttonHeight)
        btn0.backgroundColor = UIColor.orangeColor()
        btn0.setTitle("0", forState: UIControlState.Normal)
        btn0.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn0.tag = 1
        btn0.layer.borderWidth = 1
        btn0.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn0)
    }
    
    func btn1() {
        let btn1 = UIButton()
        btn1.frame = CGRectMake(0, 490, buttonWidth, buttonHeight)
        btn1.backgroundColor = UIColor.orangeColor()
        btn1.setTitle("1", forState: UIControlState.Normal)
        btn1.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn1.tag = 1
        btn1.layer.borderWidth = 1
        btn1.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn1)
    }
    
    func btn2() {
        let btn2 = UIButton()
        btn2.frame = CGRectMake(75, 490, buttonWidth, buttonHeight)
        btn2.backgroundColor = UIColor.orangeColor()
        btn2.setTitle("2", forState: UIControlState.Normal)
        btn2.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn2.tag = 1
        btn2.layer.borderWidth = 1
        btn2.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn2)
    }
    
    func btn3() {
        let btn3 = UIButton()
        btn3.frame = CGRectMake(160, 490, buttonWidth, buttonHeight)
        btn3.backgroundColor = UIColor.orangeColor()
        btn3.setTitle("3", forState: UIControlState.Normal)
        btn3.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn3.tag = 1
        btn3.layer.borderWidth = 1
        btn3.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn3)
    }
    
    func btn4() {
        let btn4 = UIButton()
        btn4.frame = CGRectMake(0, 360, buttonWidth, buttonHeight)
        btn4.backgroundColor = UIColor.orangeColor()
        btn4.setTitle("4", forState: UIControlState.Normal)
        btn4.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn4.tag = 1
        btn4.layer.borderWidth = 1
        btn4.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn4)
    }
 
    func btn5() {
        let btn5 = UIButton()
        btn5.frame = CGRectMake(75, 360, buttonWidth, buttonHeight)
        btn5.backgroundColor = UIColor.orangeColor()
        btn5.setTitle("5", forState: UIControlState.Normal)
        btn5.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn5.tag = 1
        btn5.layer.borderWidth = 1
        btn5.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn5)
    }
    
    func btn6() {
        let btn6 = UIButton()
        btn6.frame = CGRectMake(160, 360, buttonWidth, buttonHeight)
        btn6.backgroundColor = UIColor.orangeColor()
        btn6.setTitle("5", forState: UIControlState.Normal)
        btn6.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn6.tag = 1
        btn6.layer.borderWidth = 1
        btn6.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn6)
    }
    
    func btn7() {
        let btn7 = UIButton()
        btn7.frame = CGRectMake(0, 230, buttonWidth, buttonHeight)
        btn7.backgroundColor = UIColor.orangeColor()
        btn7.setTitle("7", forState: UIControlState.Normal)
        btn7.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn7.tag = 1
        btn7.layer.borderWidth = 1
        btn7.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn7)
    }
    
    func btn8() {
        let btn8 = UIButton()
        btn8.frame = CGRectMake(75, 230, buttonWidth, buttonHeight)
        btn8.backgroundColor = UIColor.orangeColor()
        btn8.setTitle("8", forState: UIControlState.Normal)
        btn8.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn8.tag = 1
        btn8.layer.borderWidth = 1
        btn8.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn8)
    }
    
    func btn9() {
        let btn9 = UIButton()
        btn.frame = CGRectMake(160, 230, buttonWidth, buttonHeight)
        btn9.backgroundColor = UIColor.orangeColor()
        btn9.setTitle("9", forState: UIControlState.Normal)
        btn9.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn9.tag = 1
        btn9.layer.borderWidth = 1
        btn9.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn9)
    }
    
    func decimal() {
        let decimal = UIButton()
        decimal.frame = CGRectMake(0, 620, buttonWidth, buttonHeight)
        decimal.backgroundColor = UIColor.orangeColor()
        decimal.setTitle(".", forState: UIControlState.Normal)
        decimal.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        decimal.tag = 1
        decimal.layer.borderWidth = 1
        decimal.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(decimal)
    }
    
    func equal() {
        let equal = UIButton()
        equal.frame = CGRectMake(160, 620, buttonWidth, buttonHeight)
        equal.backgroundColor = UIColor.orangeColor()
        equal.setTitle("=", forState: UIControlState.Normal)
        equal.addTarget(self, action: "solve::", forControlEvents: UIControlEvents.TouchUpInside)
        equal.tag = 1
        equal.layer.borderWidth = 1
        clear.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(equal)
    }
    
    func times() {
        let times = UIButton()
        times.frame = CGRectMake(245, 230, buttonWidth, buttonHeight)
        times.backgroundColor = UIColor.orangeColor()
        times.setTitle("×", forState: UIControlState.Normal)
        times.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        times.tag = 1
        times.layer.borderWidth = 1
        times.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(times)
    }
    
    func divide() {
        let divide = UIButton()
        divide.frame = CGRectMake(245, 360, buttonWidth, buttonHeight)
        divide.backgroundColor = UIColor.orangeColor()
        divide.setTitle("÷", forState: UIControlState.Normal)
        divide.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        divide.tag = 1
        divide.layer.borderWidth = 1
        divide.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(divide)
    }
    
    func add() {
        let add = UIButton()
        add.frame = CGRectMake(245, 490, buttonWidth, buttonHeight)
        add.backgroundColor = UIColor.orangeColor()
        add.setTitle("+", forState: UIControlState.Normal)
        add.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        add.tag = 1
        add.layer.borderWidth = 1
        add.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(add)
    }
    
    func subtract() {
        let subtract = UIButton()
        subtract.frame = CGRectMake(245, 620, buttonWidth, buttonHeight)
        subtract.backgroundColor = UIColor.orangeColor()
        subtract.setTitle("−", forState: UIControlState.Normal)
        subtract.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        subtract.tag = 1
        subtract.layer.borderWidth = 1
        subtract.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(subtract)
    }
    
    func sin() {
        let sin = UIButton()
        sin.frame = CGRectMake(330, 230, buttonWidth, buttonHeight)
        sin.backgroundColor = UIColor.orangeColor()
        sin.setTitle("sin()", forState: UIControlState.Normal)
        sin.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        sin.tag = 1
        sin.layer.borderWidth = 1
        sin.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(sin)
    }
    
    func cos() {
        let cos = UIButton()
        cos.frame = CGRectMake(330, 360, buttonWidth, buttonHeight)
        cos.backgroundColor = UIColor.orangeColor()
        cos.setTitle("cos()", forState: UIControlState.Normal)
        cos.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        cos.tag = 1
        cos.layer.borderWidth = 1
        cos.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(cos)
    }
    
    
    func pi() {
        let pi = UIButton()
        pi.frame = CGRectMake(330, 490, buttonWidth, buttonHeight)
        pi.backgroundColor = UIColor.orangeColor()
        pi.setTitle("π", forState: UIControlState.Normal)
        pi.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        pi.tag = 1
        pi.layer.borderWidth = 1
        pi.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(pi)
    }
    
    func root() {
        let root = UIButton()
        root.frame = CGRectMake(335, 625, buttonWidth, buttonHeight)
        root.backgroundColor = UIColor.orangeColor()
        root.setTitle("√", forState: UIControlState.Normal)
        root.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        root.tag = 1
        root.layer.borderWidth = 1
        root.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(root)
    }
    
    func clearButton() {
        let clear = UIButton()
        clear.frame = CGRectMake(0, 100, width, buttonHeight)
        clear.backgroundColor = UIColor.orangeColor()
        clear.setTitle("Clear", forState: UIControlState.Normal)
        clear.addTarget(self, action: "empty:", forControlEvents: UIControlEvents.TouchUpInside)
        clear.tag = 1
        clear.layer.borderWidth = 1
        clear.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(clear)
    }
    
    

        
        
        
    
    func appendDigit(sender: UIButton!) {
    }
    func solve(sender: UIButton!) {
        }
    func operation(sender: UIButton!) {
        }
    func empty(sender: UIButton!) {
        }
    }




