//
//  ViewController.swift
//  zuoye5
//
//  Created by 20181106279 on 2019/11/13.
//  Copyright © 2019 20181106279. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var amount: UITextField!
    var n=0.0
    var m=0.0
    var s=""
    var e=0.0
    @IBAction func start(_ sender: UIButton) {
        if(sender.currentTitle=="."){
            if(amount.text?.contains("."))!{
                return
            }
        }
        if (amount.text=="0"&&sender.currentTitle != "."){
            amount.text = sender.currentTitle
        }
        else if(amount.text=="0"&&sender.currentTitle=="."){
            amount.text = amount.text! + "."
        }
        else{
            amount.text = amount.text! + sender.currentTitle!
        }
    }
    @IBAction func fuhao(_ sender: UIButton) {
        if(sender.currentTitle=="+"){
            s="+"
            n=Double(amount.text!)!
            amount.text="0"
        }
        if(sender.currentTitle=="-"){
            s="-"
            n=Double(amount.text!)!
            amount.text="0"
        }
        if(sender.currentTitle=="*"){
            s="*"
            n=Double(amount.text!)!
            amount.text="0"
        }
        if(sender.currentTitle=="/"){
            s="/"
            n=Double(amount.text!)!
            amount.text="0"
        }
    }
    @IBAction func daan(_ sender: UIButton) {
        m=Double(amount.text!)!
        if(s=="+"){
            amount.text=String(Double(n+m))
        }
        if(s=="-"){
            amount.text=String(Double(n-m))
        }
        if(s=="*"){
            amount.text=String(Double(n*m*1.0))
        }
        if(s=="/"){
            amount.text=String(Double(n*1.0/m))
        }
    }
    @IBAction func AC(_ sender: UIButton) {
        amount.text="0"
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

