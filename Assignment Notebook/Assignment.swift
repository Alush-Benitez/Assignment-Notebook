//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Alush Benitez on 7/9/18.
//  Copyright © 2018 Alush Benitez. All rights reserved.
//

import UIKit

class Assignment: Codable {
    
    var name: String
    var subject: String
    var dueDate: String
    var discription: String
    
    init(name: String, subject: String, dueDate: String, discription: String){
        self.name = name
        self.subject = subject
        self.dueDate = dueDate
        self.discription = discription
    }
    
}
