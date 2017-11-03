//
//  TweetCell.swift
//  TwitterExample
//
//  Created by Vasudha Jags on 10/27/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import LBTAComponents

class TweetCell : DatasourceCell  {
    
    let messageTextview = UITextView()
    let profileImageView = UIImageView()
    
    let replyButton : UIButton = {
        let button = UIButton(type :.system)
        button.setImage(#imageLiteral(resourceName: "reply").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
        }()
    
    let likeButton : UIButton = {
        let button = UIButton(type :.system)
        button.setImage(#imageLiteral(resourceName: "like").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let messageButton : UIButton = {
        let button = UIButton(type :.system)
        button.setImage(#imageLiteral(resourceName: "send_message").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
    let retweetButton : UIButton = {
        let button = UIButton(type :.system)
        button.setImage(#imageLiteral(resourceName: "retweet").withRenderingMode(.alwaysOriginal), for: .normal)
        return button
    }()
    
       
    override var datasourceItem: Any?{
        didSet {
            guard let tweet  = datasourceItem as? Tweets else{
                return
            }

            profileImageView.image = tweet.profileImage
            
            let attributedText = NSMutableAttributedString(string: tweet.userName!, attributes:[NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize : 16)])
            let userId = "  \(tweet.userID ?? " ")\n"
            attributedText.append(NSMutableAttributedString(string: userId, attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize : 15), NSAttributedStringKey.foregroundColor : UIColor.gray]))
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = 4
            let range = NSMakeRange(0, attributedText.string.characters.count)
            attributedText.addAttribute(NSAttributedStringKey.paragraphStyle, value: paragraphStyle, range: range)
            attributedText.append(NSMutableAttributedString(string: tweet.tweetText!, attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize : 15)]))
            
            
            messageTextview.attributedText = attributedText
        }
    }
    

     override func setupViews(){
        super.setupViews()
        separatorLineView.isHidden = false
        
//       profileImageView.image = #imageLiteral(resourceName: "twitter_profile")
        
        addSubview(profileImageView)
        addSubview(messageTextview)
        

        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        messageTextview.anchor(topAnchor, left: profileImageView.rightAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
//        replyButton.anchor(nil, left: messageTextview.leftAnchor, bottom: self.bottomAnchor, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        setUpBottomButtons()
    }
    
    fileprivate func setUpBottomButtons(){
        let replyButtonContainerView = UIView()
        
        let retweetButtonContainerView = UIView()
        
        let likeButtonContainerView = UIView()
        
        let directMessageButtonContainerView = UIView()
        
        let buttonStackView = UIStackView(arrangedSubviews: [replyButtonContainerView, retweetButtonContainerView, likeButtonContainerView, directMessageButtonContainerView])
        addSubview(buttonStackView)
        buttonStackView.axis = .horizontal
        buttonStackView.distribution = .fillEqually
        
        buttonStackView.anchor(nil, left: messageTextview.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        addSubview(replyButton)
        addSubview(retweetButton)
        addSubview(likeButton)
        addSubview(messageButton)
        replyButton.anchor(replyButtonContainerView.topAnchor, left: replyButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        retweetButton.anchor(retweetButtonContainerView.topAnchor, left: retweetButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        likeButton.anchor(likeButtonContainerView.topAnchor, left: likeButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
        
        messageButton.anchor(directMessageButtonContainerView.topAnchor, left: directMessageButtonContainerView.leftAnchor, bottom: nil, right: nil, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 20, heightConstant: 20)
    }
}
 
