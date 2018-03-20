//
//  TaskAddtoDoViewController.swift
//  TodoApp
//
//  Created by FDC Yongbo on 20/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class TaskAddtoDoViewController: UIViewController {
    
    var taskListDelegate: TaskListDelegate?
    
    @IBOutlet weak var taskname: UITextField!
    
    @IBAction func donebutton(_ sender: Any) {
        
        let taskName = taskname.text ?? ""
        
        let task = Task(taskname: taskName)
        self.taskListDelegate?.addTask(task: task)
        self.dismiss(animated: true)
    }
    
    @IBAction func Cancel(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
