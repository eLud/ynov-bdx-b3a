//
//  Poney.swift
//  PoneyManager
//
//  Created by Ludovic Ollagnier on 20/03/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

struct Poney {
    
    //Une struct génere un init automatiquement
    let name: String
    var age: Int
    var poids: Float
    
    //A implementer pour avoir des constructeurs
    init?(name: String, poids: Float) {
        // self est l'équivalent de this
        
        if poids < 0 {
            return nil
        }
        
        self.name = name
        self.poids = poids
        age = 0
    }
    
    func mange(aliment: String, heure: Int) {
        //Concat avec + si 2 String, ou inclusion avec \()
        let message = "Je mange de " + aliment + " à \(heure) heure"
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
