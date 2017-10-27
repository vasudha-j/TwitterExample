//
//  HomeDataSource.swift
//  TwitterExample
//
//  Created by Vasudha Jags on 10/26/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//

import LBTAComponents
class HomeDataSouce : Datasource{
    
    let users : [User] = {
        var user1 = User(name: "Test1", userName: "Test2", bioText: "test tes test", profileImage: #imageLiteral(resourceName: "twitter_profile"))
        var user2 = User(name: "Test1", userName: "Test2", bioText: "qeuewydfgeghegthghsdfvshjdgfuyesgtuebfhjbdfhjgertguertiueriuferhfgbhjrergrtueyuihdhjbcvbdvbjhdsgfshfiuwerjelkfjklefgkegtiueyrtioeurioejjertjhregkjrg", profileImage: #imageLiteral(resourceName: "twitter_profile"))
        var user3 = User(name: "Test1", userName: "Test2", bioText: "qeuewydfgeghegthghsdfvshjdgfuyesgtuebfhjbdfhjgertguertiueriuferhfgbhjrergrtueyuihdhjbcvbdvbjhdsgfshfiuwerjelkfjklefgkegtiueyrtioeurioejjertjhregkjrg", profileImage: #imageLiteral(resourceName: "twitter_profile"))
        var user4 = User(name: "Test1", userName: "Test2", bioText:"qeuewydfgeghegthghsdfvshjdgfuyesgtuebfhjbdfhjgertguertiueriuferhfgbhjrergrtueyuihdhjbcvbdvbjhdsgfshfiuwerjelkfjklefgkegtiueyrtioeurioejjertjhregkjrg", profileImage: #imageLiteral(resourceName: "twitter_profile"))
        var user5 = User(name: "Test1", userName: "Test2", bioText: "qeuewydfgeghegthghsdfvshjdgfuyesgtuebfhjbdfhjgertguertiueriuferhfgbhjrergrtueyuihdhjbcvbdvbjhdsgfshfiuwerjelkfjklefgkegtiueyrtioeurioejjertjhregkjrg", profileImage: #imageLiteral(resourceName: "twitter_profile"))
        var user6 = User(name: "Test1", userName: "Test2", bioText: "qeuewydfgeghegthghsdfvshjdgfuyesgtuebfhjbdfhjgertguertiueriuferhfgbhjrergrtueyuihdhjbcvbdvbjhdsgfshfiuwerjelkfjklefgkegtiueyrtioeurioejjertjhregkjrg", profileImage: #imageLiteral(resourceName: "twitter_profile"))
        return [user1, user2, user3, user4, user5]
    }()
    
   
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
}

