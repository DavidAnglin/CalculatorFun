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
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        
        
        let clear: UIButton = UIButton(frame: CGRectMake(0, 100, 415, 130))
        clear.backgroundColor = UIColor.orangeColor()
        clear.setTitle("Clear", forState: UIControlState.Normal)
        clear.addTarget(self, action: "empty:", forControlEvents: UIControlEvents.TouchUpInside)
        clear.tag = 1
        clear.layer.borderWidth = 1
        clear.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(clear)
        
        let btn7: UIButton = UIButton(frame: CGRectMake(0, 230, 75, 130))
        btn7.backgroundColor = UIColor.orangeColor()
        btn7.setTitle("7", forState: UIControlState.Normal)
        btn7.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn7.tag = 1
        btn7.layer.borderWidth = 1
        btn7.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn7)
        
        let btn4: UIButton = UIButton(frame: CGRectMake(0, 360, 75, 130))
        btn4.backgroundColor = UIColor.orangeColor()
        btn4.setTitle("4", forState: UIControlState.Normal)
        btn4.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn4.tag = 1
        btn4.layer.borderWidth = 1
        btn4.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn4)
        
        let btn1: UIButton = UIButton(frame: CGRectMake(0, 490, 75, 130))
        btn1.backgroundColor = UIColor.orangeColor()
        btn1.setTitle("1", forState: UIControlState.Normal)
        btn1.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn1.tag = 1
        btn1.layer.borderWidth = 1
        btn1.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn1)
        
        let decimal: UIButton = UIButton(frame: CGRectMake(0, 620, 75, 130))
        decimal.backgroundColor = UIColor.orangeColor()
        decimal.setTitle(".", forState: UIControlState.Normal)
        decimal.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        decimal.tag = 1
        decimal.layer.borderWidth = 1
        decimal.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(decimal)
        
        let btn8: UIButton = UIButton(frame: CGRectMake(75, 230, 85, 130))
        btn8.backgroundColor = UIColor.orangeColor()
        btn8.setTitle("8", forState: UIControlState.Normal)
        btn8.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn8.tag = 1
        btn8.layer.borderWidth = 1
        btn8.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn8)
        
        let btn5: UIButton = UIButton(frame: CGRectMake(75, 360, 85, 130))
        btn5.backgroundColor = UIColor.orangeColor()
        btn5.setTitle("5", forState: UIControlState.Normal)
        btn5.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn5.tag = 1
        btn5.layer.borderWidth = 1
        btn5.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn5)
        
        let btn2: UIButton = UIButton(frame: CGRectMake(75, 490, 85, 130))
        btn2.backgroundColor = UIColor.orangeColor()
        btn2.setTitle("2", forState: UIControlState.Normal)
        btn2.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn2.tag = 1
        btn2.layer.borderWidth = 1
        btn2.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn2)
        
        let btn0: UIButton = UIButton(frame: CGRectMake(75, 620, 85, 130))
        btn0.backgroundColor = UIColor.orangeColor()
        btn0.setTitle("0", forState: UIControlState.Normal)
        btn0.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn0.tag = 1
        btn0.layer.borderWidth = 1
        btn0.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn0)
        
        let btn9: UIButton = UIButton(frame: CGRectMake(160, 230, 85, 130))
        btn9.backgroundColor = UIColor.orangeColor()
        btn9.setTitle("9", forState: UIControlState.Normal)
        btn9.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn9.tag = 1
        btn9.layer.borderWidth = 1
        btn9.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn9)
        
        let btn6: UIButton = UIButton(frame: CGRectMake(160, 360, 85, 130))
        btn6.backgroundColor = UIColor.orangeColor()
        btn6.setTitle("5", forState: UIControlState.Normal)
        btn6.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn6.tag = 1
        btn6.layer.borderWidth = 1
        btn6.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn6)
        
        let btn3: UIButton = UIButton(frame: CGRectMake(160, 490, 85, 130))
        btn3.backgroundColor = UIColor.orangeColor()
        btn3.setTitle("3", forState: UIControlState.Normal)
        btn3.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn3.tag = 1
        btn3.layer.borderWidth = 1
        btn3.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn3)
        
        let equal: UIButton = UIButton(frame: CGRectMake(160, 620, 85, 130))
        equal.backgroundColor = UIColor.orangeColor()
        equal.setTitle("=", forState: UIControlState.Normal)
        equal.addTarget(self, action: "solve::", forControlEvents: UIControlEvents.TouchUpInside)
        equal.tag = 1
        equal.layer.borderWidth = 1
        clear.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(equal)
        
        let times: UIButton = UIButton(frame: CGRectMake(245, 230, 85, 130))
        times.backgroundColor = UIColor.orangeColor()
        times.setTitle("×", forState: UIControlState.Normal)
        times.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        times.tag = 1
        times.layer.borderWidth = 1
        times.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(times)
        
        let divide: UIButton = UIButton(frame: CGRectMake(245, 360, 85, 130))
        divide.backgroundColor = UIColor.orangeColor()
        divide.setTitle("÷", forState: UIControlState.Normal)
        divide.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        divide.tag = 1
        divide.layer.borderWidth = 1
        divide.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(divide)
        
        let add: UIButton = UIButton(frame: CGRectMake(245, 490, 85, 130))
        add.backgroundColor = UIColor.orangeColor()
        add.setTitle("+", forState: UIControlState.Normal)
        add.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        add.tag = 1
        add.layer.borderWidth = 1
        add.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(add)
        
        let subtract: UIButton = UIButton(frame: CGRectMake(245, 620, 85, 130))
        subtract.backgroundColor = UIColor.orangeColor()
        subtract.setTitle("−", forState: UIControlState.Normal)
        subtract.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        subtract.tag = 1
        subtract.layer.borderWidth = 1
        subtract.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(subtract)
        
        let sin: UIButton = UIButton(frame: CGRectMake(330, 230, 85, 130))
        sin.backgroundColor = UIColor.orangeColor()
        sin.setTitle("sin()", forState: UIControlState.Normal)
        sin.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        sin.tag = 1
        sin.layer.borderWidth = 1
        sin.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(sin)
        
        let cos: UIButton = UIButton(frame: CGRectMake(330, 360, 85, 130))
        cos.backgroundColor = UIColor.orangeColor()
        cos.setTitle("cos()", forState: UIControlState.Normal)
        cos.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        cos.tag = 1
        cos.layer.borderWidth = 1
        cos.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(cos)
        
        let pi: UIButton = UIButton(frame: CGRectMake(330, 490, 85, 130))
        pi.backgroundColor = UIColor.orangeColor()
        pi.setTitle("π", forState: UIControlState.Normal)
        pi.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        pi.tag = 1
        pi.layer.borderWidth = 1
        pi.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(pi)
        
        let root: UIButton = UIButton(frame: CGRectMake(330, 620, 85, 130))
        root.backgroundColor = UIColor.orangeColor()
        root.setTitle("√", forState: UIControlState.Normal)
        root.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        root.tag = 1
        root.layer.borderWidth = 1
        root.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(root)
        
     

        
        
        
    
    func appendDigit(sender: UIButton!) {
    }
    func solve(sender: UIButton!) {
        }
    func operation(sender: UIButton!) {
        }
    func empty(sender: UIButton!) {
        }
    }
}



