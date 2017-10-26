//
//  HomeDataSourceController.swift
//  TwitterExample
//
//  Created by Vasudha Jags on 10/26/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//


import LBTAComponents

class HomeDataSouce : Datasource{
    
    let words = ["Hello","Hi","Yourself"]
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
}

class HomeDataSrouceController : DatasourceController{
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeDataSource = HomeDataSouce()
        self.datasource = homeDataSource
    }
}



