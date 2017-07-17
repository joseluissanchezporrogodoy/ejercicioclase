//
//  WikiViewController.swift
//  Westeros
//
//  Created by Fernando Rodriguez on 7/17/17.
//  Copyright © 2017 Keepcoding. All rights reserved.
//

import UIKit

class WikiViewController: UIViewController {

    @IBOutlet weak var browserView: UIWebView!
    
    let model : House
    
    
    init(model: House){
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func syncViewWithModel(){
        
        title = model.name
        browserView.loadRequest(URLRequest(url: model.wikiURL))
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
