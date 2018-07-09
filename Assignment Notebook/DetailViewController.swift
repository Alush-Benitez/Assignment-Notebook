//
//  DetailViewController.swift
//  Assignment Notebook
//
//  Created by Alush Benitez on 7/9/18.
//  Copyright © 2018 Alush Benitez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var discriptionTextView: UITextView!
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let assignment = self.detailItem {
            assignment.name = nameTextField.text!
            assignment.subject = subjectTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.discription = discriptionTextView.text!
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureView() {
        //Update the user interface for the detail item
        if let assignment = self.detailItem {
            nameTextField.text = assignment.name
            subjectTextField.text = assignment.subject
            dueDateTextField.text = assignment.dueDate
            discriptionTextView.text = assignment.discription
        }
    }


}

