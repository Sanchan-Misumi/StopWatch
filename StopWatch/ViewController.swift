//
//  ViewController.swift
//  StopWatch
//
//  Created by Maho Misumi on 2017/09/15.
//  Copyright © 2017年 Maho Misumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet var label1: UILabel!
     @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()
    
    var number: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func start () {
        if !timer.isValid {
            timer = Timer.scheduledTimer(
                timeInterval: 0.01,
                target: self,
                selector: #selector(self.up),
                userInfo: nil,
                repeats: true
            )
        }
        
    }

    @IBAction func stop () {
        if timer.isValid{
            
            timer.invalidate()
            
        }
    }
    
    @IBAction func lap () {
        if timer.isValid && number == 0 {
            label2.text = String(format: "%.2f")
            number = number + 1
        } else if timer.isValid && number == 1{
            label3.text = String(format: "%.2f")
             number = number - 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


func up(){
    
    count = count + 0.01
    
    label1.text = String(format: "%.2f", count)
    
    
    
}
}
