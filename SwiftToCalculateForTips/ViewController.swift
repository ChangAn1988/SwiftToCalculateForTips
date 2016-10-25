//
//  ViewController.swift
//  SwiftToCalculateForTips
//
//  Created by 陳昶安 on 2016/10/24.
//  Copyright © 2016年 ANAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var noblank: UILabel!
    
    @IBOutlet weak var consume: UITextField!
    
    @IBOutlet weak var tips: UITextField!
    
    @IBOutlet weak var consumeAddTips: UITextField!
    
    @IBAction func calaulateBtn(_ sender: UIButton) {
        
        
        if consume.text == "" || Int(consume.text!) == nil {
            
            noblank.text = "消費金額不可為空白或非數字的語言!!"
            noblank.isHidden = false
            
        } else {
            
            noblank.isHidden = true
            
            let numOfconsume = Double(consume.text!)!
            
            if numOfconsume > 0 {
                
                tips.text = "\(Int(numOfconsume * 0.1))"
                
                consumeAddTips.text = "\(Int(numOfconsume * 1.1))"
                
                tips.isHidden = false
                
                consumeAddTips.isHidden = false
                
            }
            
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

