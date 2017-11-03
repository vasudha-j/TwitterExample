//
//  UserCell.swift
//  TwitterExample
//
//  Created by Vasudha Jags on 10/27/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import LBTAComponents
class UserCell : DatasourceCell{
    
    override var datasourceItem: Any?{
        didSet {
            guard let user  = datasourceItem as? User else{
                return
            }
            nameLabel.text = user.name
            userNameLabel.text = user.userName
            bioTextView.text = user.bioText
            profileImageView.image = user.profileImage
            
        }
    }
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Vasudha J"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    
    let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "twitter_profile")
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    let userNameLabel : UILabel = {
        let label = UILabel()
        label.text = "@vasudhaj"
        label.textColor = UIColor(r: 124, g: 134, b: 139)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let bioTextView : UITextView = {
        
        let textView = UITextView()
        textView.text = "Software Developer with great programming skills. Expertise in Swift, Objective-C, OOP, Java, javaScript."
        textView.font = UIFont.boldSystemFont(ofSize: 15)
        textView.backgroundColor = .clear
        return textView
    }()
    
    let followButton : UIButton = {
        let button = UIButton()
        
        button.layer.borderColor = twitterColor.cgColor
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.setTitle("Follow", for: .normal)
        button.setTitleColor(twitterColor, for: .normal)
        button.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        return button
    }()
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = twitterColor
        addSubview(nameLabel)
        addSubview(profileImageView)
        addSubview(userNameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        backgroundColor = .white
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        userNameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0,  leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        bioTextView.anchor(userNameLabel.bottomAnchor, left: userNameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -2,  leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        followButton.anchor(nameLabel.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 0,  leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
        
        
    }
    
}

