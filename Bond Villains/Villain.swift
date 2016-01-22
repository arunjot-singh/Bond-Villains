//
//  Villain.swift
//  Bond Villains
//
//  Created by Arunjot Singh on 1/15/16.
//  Copyright © 2016 Arunjot Singh. All rights reserved.
//

import Foundation
import UIKit

struct Villain {
    
    let name: String
    let scheme: String
    let image: String
    
    static let NameKey = "NameKey"
    static let SchemeKey = "SchemeKey"
    static let ImageKey = "ImageKey"
    
    init(dictionary: [String:String]) {
        
        self.name = dictionary[Villain.NameKey]!
        self.scheme = dictionary[Villain.SchemeKey]!
        self.image = dictionary[Villain.ImageKey]!
    }
}


extension Villain {
    
    static var allVillains : [Villain] {
        var villainArray = [Villain]()
        
        for d in Villain.villainData() {
            villainArray.append(Villain(dictionary: d))
        }
        
        return villainArray
    }


    static func villainData() -> [[String: String]] {
        return [
            [Villain.NameKey : "Mr. Big", Villain.SchemeKey : "Smuggle heroin.", Villain.ImageKey : "Big"],
            [Villain.NameKey : "Ernest Blofeld", Villain.SchemeKey : "Many, many schemes.", Villain.ImageKey : "Blofeld"],
            [Villain.NameKey : "Sir Hugo Drax", Villain.SchemeKey : "Nerve gas Earth from the Moon.", Villain.ImageKey : "Drax"],
            [Villain.NameKey : "Jaws", Villain.SchemeKey : "Kill Bond with huge metal teeth.", Villain.ImageKey : "Jaws"],
            [Villain.NameKey : "Rosa Klebb", Villain.SchemeKey : "Humiliate MI6.", Villain.ImageKey : "Klebb"],
            [Villain.NameKey : "Emilio Largo", Villain.SchemeKey : "Steal nuclear weapons", Villain.ImageKey : "EmilioLargo"],
            [Villain.NameKey : "Le Chiffre", Villain.SchemeKey : "Beat Bond at poker.", Villain.ImageKey : "Lechiffre"],
            [Villain.NameKey : "Odd Job", Villain.SchemeKey : "Kill Bond with a razor hat.", Villain.ImageKey : "OddJob"],
            [Villain.NameKey : "Francisco Scaramanga", Villain.SchemeKey : "Kill Bond after assembling a golden gun.", Villain.ImageKey : "Scaramanga"],
            [Villain.NameKey : "Raoul Silva", Villain.SchemeKey : "Kill M.", Villain.ImageKey : "Silva"],
            [Villain.NameKey : "Alec Trevelyan", Villain.SchemeKey : "Nuke London after killing Bond.", Villain.ImageKey : "Trevelyan"],
            [Villain.NameKey : "Auric Goldfinger", Villain.SchemeKey : "Nuke Fort Knox.", Villain.ImageKey : "Goldfinger"],
            [Villain.NameKey : "Max Zorin", Villain.SchemeKey : "Destroy Silicon Valley with an earthquake and flood.", Villain.ImageKey : "Zorin"]
        ]
    }
}