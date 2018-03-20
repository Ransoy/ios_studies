//
//  TaskData.swift
//  TodoApp
//
//  Created by FDC Yongbo on 20/03/2018.
//  Copyright © 2018 Ross. All rights reserved.
//

import Foundation

class TaskData {
    
    private init() {}
    
    static let shared = TaskData()
    
    var taskDataLists: [Task] = []
}


protocol TaskListDelegate: class {
    func addTask(task: Task)
    func edit(task: Task,index: Int)
    func delete(index: Int)
}
