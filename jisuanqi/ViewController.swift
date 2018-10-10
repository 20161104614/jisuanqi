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
    
    
    @IBAction func entrt(_ sender: Any) {
       show.text = ""
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

