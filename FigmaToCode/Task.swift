//
//  Task.swift
//  FigmaToCode
//
//  Created by Atikur Rahman on 5/1/24.
//

import Foundation

struct Task {
    var title: String
    static func getMockTasks() -> [Task] {
        var tasks = [Task]()
        tasks.append(Task(title: "Check emails"))
        tasks.append(Task(title: "Discuss marketing plan"))
        tasks.append(Task(title: "Morning Meeting"))
        tasks.append(Task(title: "Branding campaign"))
        return tasks
    }
}
