//
//  ViewController.swift
//  SwiftTopics
//
//  Created by Eric Davenport on 11/12/19.
//  Copyright © 2019 Eric Davenport. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let swiftTopics = ["Basic Operators", "Strings and Characters", "Collection Types", "Control Flow", "Functions",
                       "Closures", "Enumerations", "Structures and Classes", "Properties", "Methods", "Subscripts",
                       "Inheritance", "Initialization", "Deinitialization", "Optional Chaining", "Error Handling",
                       "Type Casting", "Nested Types", "Extensions", "Protocols", "Generics", "Opaque Types",
                       "Automatic Reference Counting", "Memory Safety", "Access Control", "Advanced Operators"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return swiftTopics.count   // how many rows to create - amoiunt of elements in swiftTopics array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 1. get a cell using dequeueReusableCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "topicCell", for: indexPath)
        // 2. get object using indexPath
        let swiftTopic = swiftTopics[indexPath.row]
        // 3. configure the cell - set properties on the cell
        //          subtitle cell comes with imageView, textlabel and detail textlabel
        cell.textLabel?.text = swiftTopic
        return cell
    }
    
    
}
