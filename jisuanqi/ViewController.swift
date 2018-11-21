//
//  ViewController.swift
//  jisuanqi
//
//  Created by 彭皓 on 2018/9/28.
//  Copyright © 2018年 彭皓. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var show: UITextField! //文本框输入
    //var：定义一个变量 变量类型从右边推导出来的
    var storage = ""//存储数字
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    var judge = 0//决定输出数字的位数
    
    var re = 0//判断show.text前是否存在符号
    
    var control:Int = 0//计算符号
    
    var control_minus:Int = 0//正负号
    
    var number:String = ""//第一个数字

    var symblo = ""
    
    var NumberOfCalculate:Int = 0
    
    @IBAction func add(_ sender: Any) {
        if control != 0 {
            equal(control)
            symblo = "+"
            control = 1
            number = storage
            show.text = number + symblo
            storage = ""
        }
        else
        {
            number = storage
            storage = ""
            symblo = "+"
            control = 1
            show.text = number + symblo
            judge = 0
        }
       
    }
    @IBAction func minus(_ sender: Any) {
        if control != 0 {
            equal(control)
            symblo = "-"
            control = 2
            number = storage
            show.text = number + symblo
            storage = ""
        }
        else {
            number = storage
            storage = ""
            symblo = "-"
            control = 2
            show.text = number + symblo
        }
    }
    @IBAction func multiply(_ sender: Any) {
        if control != 0 {
            equal(control)
            symblo = "x"
            control = 4
            number = storage
            show.text = number + symblo
            storage = ""
        }
        else
        {
            number = storage
            storage = ""
            symblo = "x"
            control = 4
            show.text = number + symblo
        }
    }
    @IBAction func divide(_ sender: Any) {
        if control != 0 {
            equal(control)
            symblo = "÷"
            control = 3
            number = storage
            show.text = number + symblo
            storage = ""
        }
        else
        {
            number = storage
            storage = ""
            symblo = "÷"
            control = 3
            show.text = number + symblo
        }
    }
    @IBAction func equal(_ sender: Any) {
        var choose:String = ""
        
        switch control {
        case 1:
            choose = "\(Double(number)! + Double(storage)!)"
        case 2:
            choose = "\(Double(number)! - Double(storage)!)"
        case 3:
            if (storage == "0")
            {
                choose = "错误，除数不为零"
            }
            else
            {
                choose = "\(Double(number)! / Double(storage)!)"
            }
        case 4:
            choose = "\(Double(number)! * Double(storage)!)"
        default:
            choose = "0"
        }
        
        if(choose != "错误，除数不为零")
        {
            choose = String(format:"%0.8f",Double(choose)!)
        }
        
        while (choose.last == "0"){
            choose.removeLast()
        }
        if (choose.last == "."){
            choose.removeLast()
        }
        
        show.text = choose
        control = 0
        storage = choose
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
        storage = show.text!
    }
    @IBAction func entrt(_ sender: Any) {
        storage = ""
        show.text = ""
        judge = 0
        re = 0
        control = 0
    }
    
    @IBAction func num_1(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
        storage = storage + "1"
            show.text = storage
        }
        else {
            storage = "1"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_2(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            storage = storage + "2"
            show.text = storage
        }
        else {
            storage = "2"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_3(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
           storage = storage + "3"
            show.text = storage
        }
        else {
            storage = "3"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_4(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            storage = storage + "4"
            show.text = storage
        }
        else {
            storage = "4"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_5(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            storage = storage + "5"
            show.text = storage
        }
        else {
            storage = "5"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_6(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            storage = storage + "6"
            show.text = storage
        }
        else {
            storage = "6"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_7(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            storage = storage + "7"
            show.text = storage
        }
        else {
            storage = "7"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_8(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            storage = storage + "8"
            show.text = storage
        }
        else {
            storage = "8"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_9(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            storage = storage + "9"
            show.text = storage
        }
        else {
            storage = "9"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    @IBAction func num_0(_ sender: Any) {
        if userIsInTheMiddleOfTypingANumber{
            storage = storage + "0"
            show.text = storage
        }
        else {
            storage = "0"
            show.text = storage
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
    @IBAction func dot(_ sender: Any) {
        if(judge == 0)
        {
        storage = storage + "."
        show.text = storage
        judge = 1
        }
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
