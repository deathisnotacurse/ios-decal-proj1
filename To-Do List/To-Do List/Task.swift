//
//  Task.swift
//  To-Do List
//
//  Created by Yitian Zou on 10/19/16.
//  Copyright © 2016 Yitian Zou. All rights reserved.
//

import UIKit

class Task {
    var name: String
    var complete: Bool
    
    //MARK: Initialization
    init?(name: String) {
        self.name = name
        self.complete = false
        if name.isEmpty{
            return nil
        }
    }
}
