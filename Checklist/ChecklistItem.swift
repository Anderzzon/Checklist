//
//  Checklistitem.swift
//  Checklist
//
//  Created by Erik Andersson on 2020-01-20.
//  Copyright © 2020 Erik Andersson. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    @objc var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
    
}
