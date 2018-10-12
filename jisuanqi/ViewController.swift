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
    @IBOutlet weak var result_1: UITextField!
    @IBOutlet weak var result_2: UITextField!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    var number = 0//判断加减乘除
    var judge = 0//决定输出数字的位数
    var add = 0
    var re = 0//判断result.text前是否存在符号
    
    @IBAction func add(_ sender: Any) {
        if add == 1{
            let a = Double(result_1.text!)!
            let b = Double(show.text!)!
            let c = a + b
            result_1.text = String(c)
            show.text = "+"
            number = 2
            re = 1
            }
            else{
            if show.text == ""{
                show.text = "0"
                }
                else {
                let x = Double(result_1.text!)!
                result_1.text = String(x)
                show.text = "+"
                number = 2
                re = 0
                }
            }
    }
    @IBAction func minus(_ sender: Any) {
    }
    @IBAction func multiply(_ sender: Any) {
    }
    @IBAction func divide(_ sender: Any) {
    }
    @IBAction func equal(_ sender: Any) {
        var d:Double
        var c:Double
        let x = Double(result_1.text!)!
        c = (show.text! as NSString).doubleValue
        if number == 1 {
        d = x - c
        }else if number == 2 {
        d = x + c
        }else if number == 3 {
        d = x * c
        }else if number == 4 {
        d = x / (c)
        }else {
        d = 1000
        }
        result_2.text = String(c)
        if judge == 1{
            show.text = String(format:"%f", d)
        }
        else {
            show.text = String(format:"%.0f", d)
             }
             re = 1
             judge = 0
             add = 0
    }
    @IBAction func change(_ sender: Any) {
    }
    @IBAction func percent(_ sender: Any) {
    }
    @IBAction func entrt(_ sender: Any) {
        show.text = ""
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

