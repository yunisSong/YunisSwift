//
//  ViewController.swift
//  LoveTweet
//
//  Created by Yunis on 2017/9/10.
//  Copyright © 2017年 Yunis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var genderControl: UISegmentedControl!
    
    @IBOutlet weak var birthdayPicker: UIDatePicker!
    @IBOutlet weak var workField: UITextField!
    @IBOutlet weak var salarySlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saySomething(_ sender: Any) {
    }

}

