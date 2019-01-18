//
//  ViewController.swift
//  TableViewCustomCellSwift
//
//  Created by MAC OS on 5/31/17.
//  Copyright © 2017 MAC OS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var arr:[String]? = nil;
    var img:[String]? = nil;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arr = ["iPhone","Asp.Net","Android","Java","PHP"];
        img = ["image-1.jpg","image-1.jpg","image-1.jpg","image-1.jpg","image-1.jpg"];
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (arr?.count)!;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! first;
        cell.imgv.image=UIImage(named: img![indexPath.row]);
        cell.lbl.text=arr![indexPath.row];
        cell.btn.tag = indexPath.row;
        cell.btn.addTarget(self, action: #selector(btnclick), for: UIControlEvents.touchUpInside);
        
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "Names";
    }
    
    func btnclick(sender:UIButton!)
    {
        let alert = UIAlertController(title: "TableCell", message: arr?[sender.tag], preferredStyle: UIAlertControllerStyle.alert);
       let alertOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(alertOK)
        self.present(alert, animated: true, completion: nil)
    }

}

