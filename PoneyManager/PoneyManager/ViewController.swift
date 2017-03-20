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
    
    let enclos = Enclos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Actions
    @IBAction func createPoney(_ sender: UIButton) {
        
        guard let name = nameTextField.text else { return }
        guard let weightString = weightTextField.text, let weightInt = Float(weightString) else { return }
        
        let genderIndex = genderSelector.selectedSegmentIndex
        var gender: String? = nil
        
        switch genderIndex {
        case 0:
            gender = "Male"
        case 1:
            gender = "Female"
        default:
            break
        }
        
        print(name, weightInt, gender)
        guard let p = Poney(name: name, poids: weightInt) else { return }
        
        enclos.ajoute(p)
        print(enclos.liste())
    }
    
}

