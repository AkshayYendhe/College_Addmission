//
//  CheckViewController.swift
//  College_Addmission
//
//  Created by Akshay Yendhe on 25/12/22.
//

import UIKit

class CheckViewController: UIViewController {

    
    @IBOutlet weak var statusViewLabel: UILabel!
    var status : String = ""
    
    var student : Student?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        statusViewLabel.text = status
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
