//
//  ViewController.swift
//  YunisSwift
//
//  Created by Yunis on 2017/9/4.
//  Copyright © 2017年 Yunis. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tab : UITableView = UITableView.init(frame: self.view.bounds)
        tab.dataSource = self
        tab.register(UITableViewCell().classForCoder, forCellReuseIdentifier: "Ii")
        
        self.view .addSubview(tab)
        
        tab.backgroundColor = UIColor.brown
        
        self.view.backgroundColor = UIColor.red
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Ii", for: indexPath)
        cell.textLabel?.text = "Swift";
        return cell;
        
    }


}

