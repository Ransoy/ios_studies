//
//  ViewController.swift
//  RossCalculator
//
//  Created by FDC Yongbo on 15/03/2018.
//  Copyright © 2018 FDC Yongbo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberscren:Double = 0;
    var prevNumber:Double = 0;
    var performMath = true;
    var operation = 0;
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if  performMath == true {
            label.text = String(sender.tag-1)
            numberscren = Double(label.text!)!
            performMath = false;
        } else {
            label.text = label.text! + String(sender.tag-1)
            numberscren = Double(label.text!)!
        }
      
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            prevNumber = Double(label.text!)!
            if sender.tag == 12{
                label.text = "/";
            }else if sender.tag == 13 {
                label.text = "*";
            }else if sender.tag == 14 {
                label.text = "-";
            }else if sender.tag == 15 {
                label.text = "+"
            }
            performMath = true;
            operation = sender.tag;
        }else if sender.tag == 16 {
            if operation == 12 {
                label.text = String(prevNumber / numberscren);
            }else if operation == 13 {
                label.text = String(prevNumber * numberscren);
            }else if operation == 14 {
                label.text = String(prevNumber - numberscren);
            }else if operation == 15 {
                label.text = String(prevNumber + numberscren);
            }
        }
        if (sender.tag == 11) {
            label.text = "";
            prevNumber = 0;
            numberscren = 0;
            operation = 0;
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

