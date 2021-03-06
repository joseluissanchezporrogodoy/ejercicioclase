//
//  DataSources.swift
//  Westeros
//
//  Created by Fernando Rodriguez on 7/18/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import UIKit

final class DataSources{
    
    static func houseDataSource(model: [House]) -> ArrayDataSource<House>{
        
        return ArrayDataSource(model: model, cellMaker: { (house: House, tableView: UITableView) -> UITableViewCell in
            
            let cellID = "House"
            var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            if cell == nil{
                cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
            }
            
            cell?.imageView?.image = house.sigil.image
            cell?.textLabel?.text = house.name
            cell?.detailTextLabel?.text = "\(house.count) members"
            return cell!
        })
    }
    
    static func personDataSource(model: [Person]) -> ArrayDataSource<Person>{
        
        return ArrayDataSource(model: model, cellMaker: { (person: Person, tableView: UITableView) -> UITableViewCell in
            
            let cellID = "Person"
            var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            if cell == nil{
                cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
            }
            
            
            cell?.textLabel?.text = person.fullName
            return cell!
        })
    }

    
}
