//
//  Cells.swift
//  TwitterExample
//
//  Created by Vasudha Jags on 10/26/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import LBTAComponents
class UserHeader : DatasourceCell{
    override func setupViews() {
        super.setupViews()
    }
}

class UserFooter : DatasourceCell{
    override func setupViews() {
        super.setupViews()
    }
}

class UserCell : DatasourceCell{
    
    override var datasourceItem: Any?{
        didSet {
            nameLabel.text = datasourceItem as? String
        }
    }
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "VASUDHA VASUDHA VASUDHA"
        return label
    }()
    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow
        addSubview(nameLabel)
        nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    
}
