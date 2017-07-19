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
    let delegate: ArrayTableViewDelegate<Element>?
    
    
    init(dataSource: ArrayDataSource<Element>,delegate: ArrayTableViewDelegate<Element>!, title: String, style: UITableViewStyle){
        
        self.dataSource = dataSource
        self.delegate = delegate
        super.init(style: style)
        self.title = title
        
        if let _ = self.delegate {
            //Do Something
            tableView.delegate = self.delegate
        }
        tableView.dataSource = self.dataSource
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
