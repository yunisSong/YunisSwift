//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Yunis on 2017/9/8.
//  Copyright © 2017年 Yunis. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var bgImageView: UIImageView!
    
    var product: Product?
    override func viewDidLoad() {
        super.viewDidLoad()

       name.text = product?.name
    
        if let iamgename = product?.fullscreenImageName {
            bgImageView.image = UIImage.init(named: iamgename)
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.isHidden = true

    }
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.isHidden = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func showLog(_ sender: Any) {
        print("Helo World")
    }

}
