//: Playground - noun: a place where people can play

import UIKit

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

var p1 = Poney(name: "Gilbert", poids: 60)!
p1.vieilli(increment: 3)

class Enclos {
    
    var poneys: [Poney] = []
//    var poneys = [Poney]()
//    var poneys = Array<Poney>()

    func ajoute(_ poney: Poney) {
        poneys.append(poney)
    }
    
    // Type de retour indiqué avec -> "à la fin"
    func liste() -> [Poney] {
        return poneys
    }
    
    func nouvelleAnnée() {
        
        // <= 5
        for _ in 0...5 {
            
        }
        
        // < 5
        for i in 0..<5 {
            print(i)
        }
        var newPoneys = [Poney]()
        for var p in poneys {
            p.vieilli(increment: 1)
            newPoneys.append(p)
            poneys = newPoneys
        }
    }
}

p1.mange(aliment: "Foin", heure: 5)
print("Foin")


let enclos = Enclos()
enclos.ajoute(p1)
enclos.liste()
enclos.nouvelleAnnée()
enclos.liste()

var str = "42"



if let intValue = Int(str) {
    let result = intValue * 2
}

var img: Optional<UIImage>  = UIImage(named: "yrtdtr")

img = nil



guard let intValue = Int(str) else { fatalError() }
intValue * 2
















