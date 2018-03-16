//
//  ViewController.swift
//  ross_tableview
//
//  Created by FDC Yongbo on 16/03/2018.
//  Copyright © 2018 FDC Yongbo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
   
    var arr: [String] = ["testacles","fallopiantube"]
    var segueToDetail: DetailViewController?
    
    @IBOutlet weak var tableme: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableme.dataSource = self
        tableme.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style:  UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        
//        cell.detailTextLabel?.text = arr[indexPath.row]
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    }
//
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.navigationController?.pushViewController(self.segueToDetail!, animated: true)
//        self.segueToDetail?.performSegue(withIdentifier: "DetailView", sender: self)
        
        self.performSegue(withIdentifier: "segueToDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        if segue.identifier == "segueToDetail" {
            self.segueToDetail = segue.destination as! DetailViewController
        }
    }
    
}

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
