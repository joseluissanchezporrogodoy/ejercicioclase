//
//  House.swift
//  Westeros
//
//  Created by Fernando Rodriguez on 7/6/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import UIKit


// MARK: - Classes
typealias Words = String
typealias Members = Set<Person>


final class House{
    
    let name    : String
    let sigil   : Sigil
    let words   : Words
    private var _members : Members
    
    init(name: String, sigil: Sigil, words: Words) {
        
        (self.name, self.sigil, self.words) = (name, sigil, words)
        _members = Members()
    }
    
}


final class Sigil{
    
    let description : String
    let image       : UIImage
    
    init(image: UIImage, description : String) {
        (self.image, self.description) = (image, description)
    }
    
}


extension House{
    var count : Int{
        return _members.count
    }
    
    func add(person: Person){
        
        guard person.house.name == self.name else {
            return
        }
        _members.insert(person)
    }
}































