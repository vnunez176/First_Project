//
//  ViewController.swift
//  First_Project
//
//  Created by Victoria Nunez on 12/22/22.
//

import UIKit
// class
class ViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var schoolNameField: UITextField!
    
    @IBOutlet weak var schoolYearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var catsOrDogsSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    
    @IBOutlet weak var petsLabelCounter: UILabel!
    @IBAction func petsCounter(_ sender: UIStepper) {
        petsLabelCounter.text = String(sender.value)
    }
    
    @IBAction func introductionMaker(_ sender: UIButton) {
        let year = schoolYearSegmentedControl.titleForSegment(at: schoolYearSegmentedControl.selectedSegmentIndex)
        let catsordogs = catsOrDogsSegmentedControl.titleForSegment(at: catsOrDogsSegmentedControl.selectedSegmentIndex)
        let introduction = "Hi! My name is \(firstNameField.text!) \(lastNameField.text!) and I attend \(schoolNameField.text!). I am currently in my \(year!) year and I own \(petsLabelCounter.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets, and I prefer \(catsordogs!)."
        print(introduction)
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Say hi!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

