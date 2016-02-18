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
        display()
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
    
    
    
    
    var height: CGFloat = 0.0
    var width: CGFloat = 0.0
    var screenWidth: CGFloat = 0.0

    
    
    func getDimensions() {
        let screenSize = UIScreen.mainScreen().bounds
        self.height = screenSize.height / 6
        self.width = screenSize.width / 5
        screenWidth = screenSize.width
        print(height)
        
    }

    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        
        coordinator.animateAlongsideTransition({ (UIViewControllerTransitionCoordinatorContext) -> Void in
            
            let orient = UIApplication.sharedApplication().statusBarOrientation
           
            
            switch orient {
            case .Portrait:
                self.getDimensions()
                
            default:
                self.getDimensions()
            }
        
            }, completion: { (UIViewControllerTransitionCoordinatorContext) -> Void in
                print("rotation completed")
            })
    
        super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
    }
    
    func display() {
        getDimensions()
        let display = UILabel()
        display.frame = CGRectMake(0, 0, screenWidth, height)
        display.textAlignment = NSTextAlignment.Right
        display.text = "0"
        display.font = UIFont(name: "Times New Roman", size: 36)
        display.layer.borderWidth = 2
        self.view.addSubview(display)
        
    }



    
    func btn0() {
        getDimensions()
        let btn0 = UIButton()
        btn0.frame = CGRectMake(82.8, 613.35, width, height)
        btn0.backgroundColor = UIColor.orangeColor()
        btn0.setTitle("0", forState: UIControlState.Normal)
        btn0.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn0.tag = 0
        btn0.layer.borderWidth = 1
        btn0.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn0)
    }

    func btn1() {
        getDimensions()
        let btn1 = UIButton()
        btn1.frame = CGRectMake(0, 490.68, width, height)
        btn1.backgroundColor = UIColor.orangeColor()
        btn1.setTitle("1", forState: UIControlState.Normal)
        btn1.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn1.tag = 1
        btn1.layer.borderWidth = 1
        btn1.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn1)
    }
    
    func btn2() {
        getDimensions()
        let btn2 = UIButton()
        btn2.frame = CGRectMake(82.8, 490.68, width, height)
        btn2.backgroundColor = UIColor.orangeColor()
        btn2.setTitle("2", forState: UIControlState.Normal)
        btn2.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn2.tag = 2
        btn2.layer.borderWidth = 1
        btn2.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn2)
    }
    
    func btn3() {
        getDimensions()
        let btn3 = UIButton()
        btn3.frame = CGRectMake(165.6, 490.68, width, height)
        btn3.backgroundColor = UIColor.orangeColor()
        btn3.setTitle("3", forState: UIControlState.Normal)
        btn3.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn3.tag = 3
        btn3.layer.borderWidth = 1
        btn3.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn3)
    }
    
    func btn4() {
        getDimensions()
        let btn4 = UIButton()
        btn4.frame = CGRectMake(0, 368.01, width, height)
        btn4.backgroundColor = UIColor.orangeColor()
        btn4.setTitle("4", forState: UIControlState.Normal)
        btn4.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn4.tag = 4
        btn4.layer.borderWidth = 1
        btn4.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn4)
    }
 
    func btn5() {
        getDimensions()
        let btn5 = UIButton()
        btn5.frame = CGRectMake(82.8, 368.01, width, height)
        btn5.backgroundColor = UIColor.orangeColor()
        btn5.setTitle("5", forState: UIControlState.Normal)
        btn5.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn5.tag = 5
        btn5.layer.borderWidth = 1
        btn5.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn5)
    }
    
    func btn6() {
        getDimensions()
        let btn6 = UIButton()
        btn6.frame = CGRectMake(165.6, 368.01, width, height)
        btn6.backgroundColor = UIColor.orangeColor()
        btn6.setTitle("6", forState: UIControlState.Normal)
        btn6.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn6.tag = 6
        btn6.layer.borderWidth = 1
        btn6.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn6)
    }
    
    func btn7() {
        getDimensions()
        let btn7 = UIButton()
        btn7.frame = CGRectMake(0, 245.34, width, height)
        btn7.backgroundColor = UIColor.orangeColor()
        btn7.setTitle("7", forState: UIControlState.Normal)
        btn7.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn7.tag = 7
        btn7.layer.borderWidth = 1
        btn7.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn7)
    }
    
    func btn8() {
        getDimensions()
        let btn8 = UIButton()
        btn8.frame = CGRectMake(82.8, 245.34, width, height)
        btn8.backgroundColor = UIColor.orangeColor()
        btn8.setTitle("8", forState: UIControlState.Normal)
        btn8.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn8.tag = 8
        btn8.layer.borderWidth = 1
        btn8.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn8)
    }
    
    func btn9() {
        getDimensions()
        let btn9 = UIButton()
        btn9.frame = CGRectMake(165.6, 245.34, width, height)
        btn9.backgroundColor = UIColor.orangeColor()
        btn9.setTitle("9", forState: UIControlState.Normal)
        btn9.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        btn9.tag = 9
        btn9.layer.borderWidth = 1
        btn9.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(btn9)
    }
    
    func decimal() {
        getDimensions()
        let decimal = UIButton()
        decimal.frame = CGRectMake(0, 613.35, width, height)
        decimal.backgroundColor = UIColor.orangeColor()
        decimal.setTitle(".", forState: UIControlState.Normal)
        decimal.addTarget(self, action: "appendDigit:", forControlEvents: UIControlEvents.TouchUpInside)
        decimal.tag = 10
        decimal.layer.borderWidth = 1
        decimal.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(decimal)
    }
    
    func equal() {
        getDimensions()
        let equal = UIButton()
        equal.frame = CGRectMake(165.6, 613.35, width, height)
        equal.backgroundColor = UIColor.orangeColor()
        equal.setTitle("=", forState: UIControlState.Normal)
        equal.addTarget(self, action: "solve:", forControlEvents: UIControlEvents.TouchUpInside)
        equal.tag = 11
        equal.layer.borderWidth = 1
        equal.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(equal)
    }
    
    func times() {
        getDimensions()
        let times = UIButton()
        times.frame = CGRectMake(248.4, 245.34, width, height)
        times.backgroundColor = UIColor.orangeColor()
        times.setTitle("×", forState: UIControlState.Normal)
        times.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        times.tag = 12
        times.layer.borderWidth = 1
        times.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(times)
    }
    
    func divide() {
        getDimensions()
        let divide = UIButton()
        divide.frame = CGRectMake(248.4, 368.01, width, height)
        divide.backgroundColor = UIColor.orangeColor()
        divide.setTitle("÷", forState: UIControlState.Normal)
        divide.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        divide.tag = 13
        divide.layer.borderWidth = 1
        divide.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(divide)
    }
    
    func add() {
        getDimensions()
        let add = UIButton()
        add.frame = CGRectMake(248.4, 490.68, width, height)
        add.backgroundColor = UIColor.orangeColor()
        add.setTitle("+", forState: UIControlState.Normal)
        add.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        add.tag = 14
        add.layer.borderWidth = 1
        add.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(add)
    }
    
    func subtract() {
        getDimensions()
        let subtract = UIButton()
        subtract.frame = CGRectMake(248.4, 613.35, width, height)
        subtract.backgroundColor = UIColor.orangeColor()
        subtract.setTitle("−", forState: UIControlState.Normal)
        subtract.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        subtract.tag = 15
        subtract.layer.borderWidth = 1
        subtract.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(subtract)
    }
    
    func sin() {
        getDimensions()
        let sin = UIButton()
        sin.frame = CGRectMake(331.2, 245.34, width, height)
        sin.backgroundColor = UIColor.orangeColor()
        sin.setTitle("sin", forState: UIControlState.Normal)
        sin.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        sin.tag = 16
        sin.layer.borderWidth = 1
        sin.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(sin)
    }
    
    func cos() {
        getDimensions()
        let cos = UIButton()
        cos.frame = CGRectMake(331.2, 368.01, width, height)
        cos.backgroundColor = UIColor.orangeColor()
        cos.setTitle("cos", forState: UIControlState.Normal)
        cos.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        cos.tag = 17
        cos.layer.borderWidth = 1
        cos.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(cos)
    }
    
    
    func pi() {
        getDimensions()
        let pi = UIButton()
        pi.frame = CGRectMake(331.2, 490.68, width, height)
        pi.backgroundColor = UIColor.orangeColor()
        pi.setTitle("π", forState: UIControlState.Normal)
        pi.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        pi.tag = 18
        pi.layer.borderWidth = 1
        pi.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(pi)
    }
    
    func root() {
        getDimensions()
        let root = UIButton()
        root.frame = CGRectMake(331.2, 613.35, width, height)
        root.backgroundColor = UIColor.orangeColor()
        root.setTitle("√", forState: UIControlState.Normal)
        root.addTarget(self, action: "operation:", forControlEvents: UIControlEvents.TouchUpInside)
        root.tag = 19
        root.layer.borderWidth = 1
        root.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(root)
    }
    
    func clearButton() {
        getDimensions()
        let clear = UIButton()
        clear.frame = CGRectMake(0, 122.67, screenWidth, height)
        clear.backgroundColor = UIColor.orangeColor()
        clear.setTitle("Clear", forState: UIControlState.Normal)
        clear.addTarget(self, action: "empty:", forControlEvents: UIControlEvents.TouchUpInside)
        clear.tag = 20
        clear.layer.borderWidth = 1
        clear.titleLabel!.font = UIFont(name: "Times New Roman", size: 36)
        self.view.addSubview(clear)
    }

 
        
        
        
//
//    func appendDigit(sender: UIButton!) {
//    }
//    func solve(sender: UIButton!) {
//        }
//    func operation(sender: UIButton!) {
//        }
//    func empty(sender: UIButton!) {
//        }
//


}


