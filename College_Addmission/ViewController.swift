//
//  ViewController.swift
//  College_Addmission
//
//  Created by Akshay Yendhe on 25/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var collegeNameTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var percentageTextField: UITextField!
    @IBOutlet weak var isPrivateSwitch: UISwitch!
    var isPrivateSwitchValue : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func isPrivateSwitch(_ sender: Any) {
        if isPrivateSwitch.isOn{
            isPrivateSwitchValue = true
        }
        else{
            isPrivateSwitchValue = false
        }
    }
    
    @IBAction func checkButtonAction(_ sender: Any) {
        
        let percentage = Double(percentageTextField.text!)!
        let student1 = checkAddmission(student: Student(studentName: fullNameTextField.text!, studentMarks: percentage), college: College(collegeName: collegeNameTextField.text!, city: cityTextField.text!, isPrivate: isPrivateSwitchValue))
          
        
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: .none)
        let checkViewController = mainStoryBoard.instantiateViewController(withIdentifier: "CheckViewController") as! CheckViewController
        checkViewController.status = student1
        self.present(checkViewController, animated: true)
    }
    
}

