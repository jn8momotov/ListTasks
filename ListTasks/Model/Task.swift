//
//  Task.swift
//  ListTasks
//
//  Created by Евгений on 19.07.2018.
//  Copyright © 2018 Евгений. All rights reserved.
//

import Foundation

class Task {
    
    var name: String
    var category: String
    var priority: String
    var countDay: String
    var info: String
    var status: Bool
        
    init(name: String, category: String, priority: String, countDay: String, info: String, status: Bool) {
        self.name = name
        self.category = category
        self.priority = priority
        self.countDay = countDay
        self.info = info
        self.status = status
    }
}
