//
//  EditTodoViewController.swift
//  TodoApp
//
//  Created by FDC Yongbo on 20/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class EditTodoViewController: UIViewController {
    
    var tasklistDelegate: TaskListDelegate?
    var index = 0
    var taskName = ""
    @IBOutlet weak var editmytask: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.editmytask.text = taskName
        // Do any additional setup after loading the view.
    }

    @IBAction func editMytask(_ sender: UIButton) {
        let editname = editmytask.text ?? ""
        let task = Task(taskname: editname)
        tasklistDelegate?.edit(task: task, index: index)
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func cancel(_ sender: UIButton) {
          self.navigationController?.popViewController(animated: true)
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
