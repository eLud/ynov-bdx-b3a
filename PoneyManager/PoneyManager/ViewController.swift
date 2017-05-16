//
//  ViewController.swift
//  PoneyManager
//
//  Created by Ludovic Ollagnier on 20/03/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var genderSelector: UISegmentedControl!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var ageLabel: UILabel!
    
    var enclos: Enclos?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Actions
    @IBAction func ageSliderDidChange(_ sender: UISlider) {
        
        let intValue = Int(sender.value)
        ageLabel.text = String(intValue)
        
        // "Crante" le slider
        sender.value = Float(intValue)
    }
    
    @IBAction func createPoney(_ sender: UIButton) {
        
        guard let enclos = enclos  else { fatalError("No enclos !") }
        guard let name = nameTextField.text else { return }
        guard let weightString = weightTextField.text, let weightInt = Float(weightString) else { return }
        
        let genderIndex = genderSelector.selectedSegmentIndex
        var gender: Gender
        
        switch genderIndex {
        case 0:
            gender = .male
        case 1:
            gender = .female
        default:
            gender = .undefined
        }
        
        print(name, weightInt, gender)
        guard let p = Poney(name: name, poids: weightInt, age: Int(ageSlider.value), gender: gender) else { return }
        
        var male = Gender.male
        male = .female
        
        enclos.ajoute(p)
        print(enclos.liste())
        
        dismiss(animated: true, completion: nil)
    }
    
}

