//
//  ViewController.swift
//  StopWatch
//
//  Created by Maho Misumi on 2017/09/15.
//  Copyright © 2017年 Maho Misumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    
    var timer: Timer = Timer()
    
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


func up(){
    
    count = count + 0.01
    
    label.text = String(format: "%.2f", count)
    
    
    
}
}
