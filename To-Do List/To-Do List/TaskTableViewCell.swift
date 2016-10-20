//
//  TaskTableViewCell.swift
//  To-Do List
//
//  Created by Yitian Zou on 10/19/16.
//  Copyright © 2016 Yitian Zou. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    //MARK: Properties
    var complete = false
    @IBOutlet weak var taskComplete: UISwitch!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            complete = true
            print("task complete")
        } else {
            complete = false
            print("task not complete")
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        taskComplete.addTarget(self, action: #selector(stateChanged), for: UIControlEvents.valueChanged)

    }

}
