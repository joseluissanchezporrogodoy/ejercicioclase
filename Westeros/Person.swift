//
//  Character.swift
//  Westeros
//
//  Created by Fernando Rodriguez on 7/6/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import Foundation

final class Person{
    
    let name    : String
    let house   : House
    private let _alias   : String?
    
    var alias : String{
        get{
            return _alias ?? ""
        }
    }
    
    init(name: String, alias: String, house: House) {
        
        self.name = name
        _alias = alias
        self.house = house
    }
    
    init(name: String, house: House){
        self.name = name
        self.house = house
        _alias = nil
    }
}



