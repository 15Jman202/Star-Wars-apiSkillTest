//
//  Character.swift
//  Star Wars
//
//  Created by Justin Carver on 9/1/16.
//  Copyright © 2016 Justin Carver. All rights reserved.
//

import Foundation

class Character {
    
    private let kName = "name"
    private let kHeight = "height"
    private let kMass = "mass"
    private let kHairColor = "hair_color"
    
    var name: String
    var height: String
    var mass: String
    var hairColor: String
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[kName] as? String, height = dictionary[kHeight] as? String, mass = dictionary[kMass] as? String, hairColor = dictionary[kHairColor] as? String else { return nil }
        
        self.mass = mass
        self.height = height
        self.name = name
        self.hairColor = hairColor
    }
    
    
    
    
}