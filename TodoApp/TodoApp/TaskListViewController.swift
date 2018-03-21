//
//  TaskListViewController.swift
//  TodoApp
//
//  Created by FDC Yongbo on 20/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import UIKit

class TaskListViewController: UITableViewController  {

    var tasklist = TaskData.shared.taskDataLists
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasklist.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        // Configure the cell...
        cell.task = tasklist[indexPath.row]
        return cell
    }

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tasklist.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.none)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "segueToAdd", let vc = segue.destination as? TaskAddtoDoViewController {
            vc.taskListDelegate = self
        }
        
        if segue.identifier == "seguetoEdit", let vc = segue.destination as? EditTodoViewController {
            self.index = self.tableView.indexPathForSelectedRow?.row ?? 0
            vc.tasklistDelegate = self
            vc.index = self.index
            vc.task = tasklist[self.index]
        }
    }
}

extension TaskListViewController: TaskListDelegate {
    func updateStatus(stat: Bool) {
        self.tasklist[index].status = stat
        self.tableView.reloadData()
    }
    
    func addTask(task: Task) {
        self.tasklist.append(task)
        self.tableView.reloadData()
    }
    
    func edit(task: Task, index: Int) {
        self.tasklist[index] = task
        self.tableView.reloadData()
    }
}
