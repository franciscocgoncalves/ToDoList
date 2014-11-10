//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Francisco Gonçalves on 10/11/14.
//  Copyright (c) 2014 SINFO. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!
    var toDoItem: ToDoItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if((sender as? UIBarButtonItem) != nil) {
            if(countElements(self.textField.text) > 0) {
                toDoItem = ToDoItem()
                toDoItem!.itemName = self.textField.text
            }
        }
    }
    
}
