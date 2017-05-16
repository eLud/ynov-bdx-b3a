//
//  Poney.swift
//  PoneyManager
//
//  Created by Ludovic Ollagnier on 20/03/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

enum Gender {
    case male
    case female
    case undefined
    
    func stringValue() -> String {
        switch self {
        case .male:
            return "Male"
        case .female:
            return "Female"
        default:
            return "Undefined"
        }
    }
}

struct Poney {
    
    //Une struct génere un init automatiquement
    let name: String
    var age: Int
    var poids: Float
    
    var gender: Gender
    
    //A implementer pour avoir des constructeurs
    init?(name: String, poids: Float, age: Int, gender: Gender) {
        // self est l'équivalent de this
        
        if poids < 0 {
            return nil
        }
        
        self.name = name
        self.poids = poids
        self.age = age
        self.gender = gender
    }
    
    func mange(aliment: String, heure: Int) {
        //Concat avec + si 2 String, ou inclusion avec \()
        let message: String = "Je mange de " + aliment + " à \(heure) heure"
        print(message)
    }
    
    //Mutating : nécéssaire pour qu'une structure puisse modifier ses variables d'instance
    mutating func grossi(de increment: Float) {
        poids += increment
        print(poids)
    }
    
    mutating func vieilli(increment: Int) {
        age += increment
        grossi(de: 5)
    }
}
