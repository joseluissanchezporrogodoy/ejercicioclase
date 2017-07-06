//
//  Character.swift
//  Westeros
//
//  Created by Fernando Rodriguez on 7/6/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import Foundation

final class Character{
    
    let name    : String
    let house   : House
    private let _alias   : String?
    
    var alias : String{
        get{
            return _alias ?? ""
        }
    }
    
    
}
