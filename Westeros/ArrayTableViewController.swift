//
//  ArrayTableViewController.swift
//  Westeros
//
//  Created by Fernando Rodriguez on 7/18/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import UIKit

class ArrayTableViewController<Element>: UITableViewController {

    let dataSource : ArrayDataSource<Element>
    
    
    
    init(dataSource: ArrayDataSource<Element>, title: String, style: UITableViewStyle){
        
        self.dataSource = dataSource
        super.init(style: style)
        self.title = title
        
        tableView.dataSource = self.dataSource
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
