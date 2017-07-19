//
//  Delegates.swift
//  Westeros
//
//  Created by Fernando Rodriguez on 7/18/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import UIKit

final class Delegates{
    
    static func housesDelegate(model: [House],nav: UINavigationController)->ArrayTableViewDelegate<House>{
        
        // Qué va aqui???
        
        return ArrayTableViewDelegate (model: model, viewControllerMaker: {(house: House, UITableView)->() in
           
            nav.pushViewController(HouseViewController(model: house), animated: true)
            
            
        })
        
    }
}
