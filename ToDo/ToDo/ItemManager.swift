//
//  ItemManager.swift
//  ToDo
//
//  Created by MacMini on 3/6/17.
//  Copyright © 2017 Home. All rights reserved.
//

import Foundation
class ItemManager {
    
    private var toDoItems = [ToDoItem]()
    private var doneItems = [ToDoItem]()
    
    var toDoCount : Int {return toDoItems.count}
    var doneCount : Int {return doneItems.count}
    
    func checkItemAtIndex(index: Int) {
        let item = toDoItems.remove(at: index)
        doneItems.append(item)
    }
    func itemAtIndex(index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    func doneItemAtIndex(index: Int) -> ToDoItem {
        return doneItems[index]
    }
    func addItem(item: ToDoItem) {
        if !toDoItems.contains(item) {
            toDoItems.append(item)
        }
    }
}
