//
//  Enclos.swift
//  PoneyManager
//
//  Created by Ludovic Ollagnier on 20/03/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

import Foundation

class Enclos {
    
    var poneys: [Poney] = []
    
    func ajoute(_ poney: Poney) {
        poneys.append(poney)
        let notCenter = NotificationCenter.default
        notCenter.post(name: Notification.Name("modelUpdated"), object: self)
    }
    
    // Type de retour indiqué avec -> "à la fin"
    func liste() -> [Poney] {
        return poneys
    }
    
    func nouvelleAnnée() {
        var newPoneys = [Poney]()
        for var p in poneys {
            p.vieilli(increment: 1)
            newPoneys.append(p)
            poneys = newPoneys
        }
    }
}
