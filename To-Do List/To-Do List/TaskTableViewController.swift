//
//  TaskTableViewController.swift
//  To-Do List
//
//  Created by Yitian Zou on 10/19/16.
//  Copyright © 2016 Yitian Zou. All rights reserved.
//

import UIKit

class TaskTableViewController: UITableViewController {
    
    //MARK: Properties
    var tasks = [Task]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleTasks()
    }
    
    func loadSampleTasks() {
        let task1 = Task(name: "be productive")!
        let task2 = Task(name: "eat things")!
        tasks+=[task1, task2]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "TaskTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TaskTableViewCell
        let task = tasks[indexPath.row]
        // Configure the cell...
        cell.nameLabel.text = task.name
        cell.taskComplete.isOn = task.complete
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
    @IBAction func unwindToTaskList(sender: UIStoryboardSegue) {
        if let source = sender.source as? TaskViewController, let task = source.task {
            let newIndexPath = NSIndexPath(row: tasks.count, section: 0)
            tasks.append(task)
            //tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
            tableView.insertRows(at: [newIndexPath as IndexPath], with: .bottom)
        }
    }

}
