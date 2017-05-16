//
//  PoneysTableViewController.swift
//  PoneyManager
//
//  Created by Ludovic Ollagnier on 15/05/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

import UIKit

class PoneysTableViewController: UITableViewController {

    var enclos = Enclos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...10 {
            
            let randomInt = Int(arc4random_uniform(12))
            enclos.ajoute(Poney(name: "P\(i)", poids: 15, age: randomInt, gender: .male)!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return enclos.liste().count
        default:
            fatalError("Wrong section number")
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "poneyCell", for: indexPath)

        // Configure the cell...
        let poney = enclos.liste()[indexPath.row]
        cell.textLabel?.text = "Nom : " + poney.name
        cell.detailTextLabel?.text = "Age : \(poney.age)"
        
//        if poney.age%2 == 0 {
//            cell.backgroundColor = UIColor.red
//        } else {
//            cell.backgroundColor = UIColor.blue
//        }
        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showForm" {
            print("Going to form")
            
            guard let destination = segue.destination as? ViewController else { return }
            let localEnclos = self.enclos
            destination.enclos = localEnclos
            
        } else if segue.identifier == "showDetails" {
            print("Going to details")
        }
    }
    
    

}
