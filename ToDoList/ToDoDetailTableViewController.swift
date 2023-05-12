//
//  ToDoDetailTableViewController.swift
//  ToDoList
//
//  Created by Natasha Machado on 2023-05-11.
//

import UIKit

class ToDoDetailTableViewController: UITableViewController {
  
 
  @IBOutlet var titleTextField: UITextField!
    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var dueDateLabel: UILabel!
    @IBOutlet var dueDateDatePicker: UIDatePicker!
    @IBOutlet var notesTextView: UITextView!
    
  @IBOutlet var saveButton: UIBarButtonItem!
   
  
  @IBAction func textEditingChanged(_ sender: UITextField) {
      updateSaveButtonState()
  }
  
  @IBAction func returnPressed(_ sender: UITextField) {
    sender.resignFirstResponder()
}

  @IBAction func isCompleteButtonTapped(_ sender: UIButton) {
      isCompleteButton.isSelected.toggle()
  }
  
  @IBAction func datePickerChanged(_ sender: UIDatePicker) {
      updateDueDateLabel(date: sender.date)
  }
  
  
  override func viewDidLoad() {
      super.viewDidLoad()
      updateDueDateLabel(date: dueDateDatePicker.date)
      updateSaveButtonState()
  }

  func updateDueDateLabel(date: Date) {
      dueDateLabel.text = date.formatted(.dateTime.month(.defaultDigits)
         .day().year(.twoDigits).hour().minute())
  }
  
  
  func updateSaveButtonState() {
      let shouldEnableSaveButton = titleTextField.text?.isEmpty ==
         false
      saveButton.isEnabled = shouldEnableSaveButton
  }
  
  
  }
