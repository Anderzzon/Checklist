//
//  TodoList.swift
//  Checklist
//
//  Created by Erik Andersson on 2020-01-20.
//  Copyright © 2020 Erik Andersson. All rights reserved.
//

import Foundation

class TodoList {
    
    enum Priority: Int, CaseIterable {
        case high, medium, low, no
    }
    
    private var highPriorityTodos:[ChecklistItem] = []
    private var mediumPriorityTodos:[ChecklistItem] = []
    private var lowPriorityTodos:[ChecklistItem] = []
    private var noPriorityTodos:[ChecklistItem] = []
    
    init() {
        
        let row0item = ChecklistItem()
        let row1item = ChecklistItem()
        let row2item = ChecklistItem()
        let row3item = ChecklistItem()
        let row4item = ChecklistItem()
        
        row0item.text = "Take a jog"
        row1item.text = "Watch a movie"
        row2item.text = "Code an app"
        row3item.text = "Walk the dog"
        row4item.text = "Study design patterns"
        
        addTodo(row0item, for: .medium)
        addTodo(row1item, for: .low)
        addTodo(row2item, for: .high)
        addTodo(row3item, for: .no)
        addTodo(row4item, for: .high)
    }
    
    func addTodo(_ item: ChecklistItem, for priority: Priority, at index: Int = -1) {
      switch priority {
            case .high:
                if index < 0 {
                    highPriorityTodos.append(item)
                } else {
                    highPriorityTodos.insert(item, at: index)
                }
            case .medium:
            if index < 0 {
                mediumPriorityTodos.append(item)
            } else {
                mediumPriorityTodos.insert(item, at: index)
            }
            case .low:
            if index < 0 {
                lowPriorityTodos.append(item)
            } else {
                lowPriorityTodos.insert(item, at: index)
            }
            case .no:
            if index < 0 {
                noPriorityTodos.append(item)
            } else {
                noPriorityTodos.insert(item, at: index)
            }
        }
    }
    
    func todoList(for priority: Priority) -> [ChecklistItem] {
        switch priority {
        case .high:
            return highPriorityTodos
        case .medium:
            return mediumPriorityTodos
        case .low:
            return lowPriorityTodos
        case .no:
            return noPriorityTodos
        }
    }
    
    func newTodo() -> ChecklistItem {
        let item = ChecklistItem()
        item.text = randomTitle()
        item.checked = true
        mediumPriorityTodos.append(item)
        return item
    }
    
    func move(item: ChecklistItem, from sourcePriority: Priority, at sourceIndex: Int, to destinationPriority: Priority, at destinationIndex: Int) {
        remove(item, from: sourcePriority, at: sourceIndex)
        addTodo(item, for: destinationPriority, at: destinationIndex)
    }
    
    func remove(_ item: ChecklistItem, from priority: Priority, at index: Int) {
        switch priority {
        case .high:
            highPriorityTodos.remove(at: index)
        case .medium:
            mediumPriorityTodos.remove(at: index)
        case .low:
            lowPriorityTodos.remove(at: index)
        case .no:
            noPriorityTodos.remove(at: index)
        }
    }
    
    private func randomTitle() -> String {
        var titles = ["New todo item", "Generic todo", "Fill me out", "I need something to do", "Much todo about nothing"]
        
        let randomNumber = Int.random(in: 0 ... titles.count - 1)
        
        return titles[randomNumber]
    }
}
