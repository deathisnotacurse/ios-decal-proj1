//
//  TaskViewController.swift
//  To-Do List
//
//  Created by Yitian Zou on 10/17/16.
//  Copyright © 2016 Yitian Zou. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController, UITextFieldDelegate, UINavigationControllerDelegate {
    
    //MARK: Properties
    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        taskNameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: UITextFieldDelegate

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    //MARK: Navigation
    override func prepare(for: UIStoryboardSegue, sender: Any?) {
        if saveButton === sender as AnyObject? {
            let name = taskNameTextField.text ?? ""
        
            task = Task(name: name)
        }
    }
    
    //MARK: Actions

}

