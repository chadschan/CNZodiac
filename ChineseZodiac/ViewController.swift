//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by chad on 15/4/11.
//  Copyright (c) 2015年 chad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var zodiacImage: UIImageView!
    
    let offSet = 4;  //计算属相偏移
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //收起数字键盘
    override func touchesEnded(touches: NSSet, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
    }
    
    //执行重载图片的动作
    @IBAction func okDidTap(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        
        if let year = yearOfBirth.text.toInt(){
            var imageNumber = (year + 12 - offSet) % 12;
            zodiacImage.image = UIImage(named: String(imageNumber));
        }
        
    }

}

