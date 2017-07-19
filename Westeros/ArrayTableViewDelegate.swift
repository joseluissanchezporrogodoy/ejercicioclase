//
//  ArrayTableViewDelegate.swift
//  Westeros
//
//  Created by Fernando Rodriguez on 7/18/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import UIKit

final class ArrayTableViewDelegate<Element>: NSObject, UITableViewDelegate{
    
    typealias Elements = [Element]
    typealias ViewControllerMaker = (Element, UITableView)->()
    
    let model : Elements
    private let _viewControllerMaker : ViewControllerMaker
   
    
    init(model: Elements, viewControllerMaker: @escaping ViewControllerMaker){
        self.model = model
               _viewControllerMaker = viewControllerMaker
        super.init()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Qué pasa aquí dentro?
        let elt = model[indexPath.row]
        _viewControllerMaker(elt,tableView)
    }
}
