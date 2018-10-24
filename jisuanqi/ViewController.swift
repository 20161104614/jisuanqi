//
//  ViewController.swift
//  jisuanqi
//
//  Created by 彭皓 on 2018/9/28.
//  Copyright © 2018年 彭皓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var show: UITextField!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    var judge = 0//决定输出数字的位数
    var re = 0//判断show.text前是否存在符号
    
    var control:Int = 0
    var control_minus:Int = 0
    var number:String = ""
    var NumberOfCalculate:Int = 0
    
    @IBAction func add(_ sender: Any) {
        if control != 0 {
            equal(control)
        }
        control = 2
        number = show.text!
        
        show.text = ""
        NumberOfCalculate = 0
    }
    @IBAction func minus(_ sender: Any) {
        if control != 0 {
            equal(control)
        }
        control = 1
        number = show.text!
        show.text = ""
        NumberOfCalculate = 0
    }
    @IBAction func multiply(_ sender: Any) {
        if control != 0 {
            equal(control)
        }
        control = 4
        number = show.text!
        show.text = ""
        NumberOfCalculate = 0
    }
    @IBAction func divide(_ sender: Any) {
        if control != 0 {
            equal(control)
        }
        control = 3
        number = show.text!
        show.text = ""
        NumberOfCalculate = 0
    }
    @IBAction func equal(_ sender: Any) {
        var strtemp:String = ""
        switch control {
        case 1 :
            strtemp = "\(Double(number)! - Double(show.text!)!)"
        case 2 :
            strtemp = "\(Double(number)! + Double(show.text!)!)"
        case 3:
            strtemp = "\(Double(number)! / Double(show.text!)!)"
        case 4:
            strtemp = "\(Double(number)! * Double(show.text!)!)"
        default:
            strtemp = "0"
        }
        
        while (strtemp.last == "0"){
            strtemp.removeLast()
        }
        if (strtemp.last == "."){
            strtemp.removeLast()
        }
        show.text = strtemp
        control = 0
        number = show.text!
        NumberOfCalculate = NumberOfCalculate + 1
    }
    @IBAction func change(_ sender: Any) {
        if control_minus == 0 {
           show.text = "-" + show.text!
           control_minus = 1
        }
        else {
            show.text?.removeFirst()
            control_minus = 0
        }
    }
    @IBAction func percent(_ sender: Any) {
         show.text?.removeLast()
    }
    @IBAction func entrt(_ sender: Any) {
        show.text = ""
        re = 0
    }
    
    @IBAction func num_1(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
        show.text = show.text! + "1"
        }
        else {
            show.text = "1"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_2(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "2"
        }
        else {
            show.text = "2"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_3(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "3"
        }
        else {
            show.text = "3"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_4(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "4"
        }
        else {
            show.text = "4"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_5(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "5"
        }
        else {
            show.text = "5"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_6(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "6"
        }
        else {
            show.text = "6"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_7(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "7"
        }
        else {
            show.text = "7"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_8(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "8"
        }
        else {
            show.text = "8"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_9(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "9"
        }
        else {
            show.text = "9"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_0(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            show.text = show.text! + "0"
        }
        else {
            show.text = "0"
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
    @IBAction func dot(_ sender: Any) {
        show.text = show.text! + "."
        judge = 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

