//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Yunis on 2017/9/8.
//  Copyright © 2017年 Yunis. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {

    fileprivate var sourceArray: [Product]?
    fileprivate let identifer = "productCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sourceArray = [
            Product(name: "1907 Wall Set", cellImageName: "image-cell1", fullscreenImageName: "phone-fullscreen1"),
            Product(name: "1921 Dial Phone", cellImageName: "image-cell2", fullscreenImageName: "phone-fullscreen2"),
            Product(name: "1937 Desk Set", cellImageName: "image-cell3", fullscreenImageName: "phone-fullscreen3"),
            Product(name: "1984 Moto Portable", cellImageName: "image-cell4", fullscreenImageName: "phone-fullscreen4")]
        
//        test.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];

        self.tableView.tableFooterView = UIView.init(frame: CGRect.zero)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (sourceArray?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifer, for: indexPath)
        let model = sourceArray?[indexPath.row]
        cell.imageView?.image = UIImage.init(named: (model?.cellImageName)!)
        cell.textLabel?.text = model?.name
        return cell
    }
 

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProduct" {
            if let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPath(for: cell),
                let productVC = segue.destination as? ProductViewController {
                productVC.product = sourceArray?[(indexPath as NSIndexPath).row]
            }
        }
    }
 
    

}
