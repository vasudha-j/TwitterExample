//
//  Cells.swift
//  TwitterExample
//
//  Created by Vasudha Jags on 10/26/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import LBTAComponents
let twitterColor = UIColor(r: 61, g: 167, b: 244)
class UserHeader : DatasourceCell{
    let headerTextLabel : UILabel = {
        let label = UILabel()
        label.text = "WHO TO FOLLOW"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
      addSubview(headerTextLabel)
        headerTextLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        
}
}
class UserFooter : DatasourceCell{
    let footerTextLabel : UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.textColor = twitterColor
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label 
    }()
    override func setupViews() {
        super.setupViews()
        addSubview(footerTextLabel)
        footerTextLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}

