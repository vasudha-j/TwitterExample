//
//  HomeDataSourceController+CustomNavigationBar.swift
//  TwitterExample
//
//  Created by Vasudha Jags on 10/27/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import UIKit

extension HomeDataSrouceController{
    func setUpCustomNavigationBar(){
        setUpTitleView()
        setUpNavLeftBarButton()
        setUpNavRightBarButton()
    }
    
    private func setUpNavRightBarButton(){
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let tweetButton = UIButton(type: .system)
        tweetButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        tweetButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: searchButton)
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: tweetButton),UIBarButtonItem(customView:searchButton)]
        
    }
    
    private func setUpNavLeftBarButton(){
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
        
    }
    
    private func setUpTitleView(){
        let titleImageView : UIImageView = UIImageView(image : #imageLiteral(resourceName: "title_icon"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }
    
    private func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

