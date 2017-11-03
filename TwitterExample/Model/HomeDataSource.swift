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
    
    let tweet : [Tweets] = {
        let tweet1 = Tweets(profileImage: #imageLiteral(resourceName: "twitter_profile"), userName: "Vasudha", tweetText: "Go vegan #govegan#plantbaseddiet#saveanimals", userID :"@abcdsdkjheirheti")
        let tweet2 = Tweets(profileImage: #imageLiteral(resourceName: "twitter_profile"), userName: "Vasudha", tweetText: "Go vegan #govegan#plantbaseddiet#saveanimals", userID :"@abcdsdkjheirheti")
        return [tweet1,tweet2]
    }()
   
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self , TweetCell.self]
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1{
            return tweet[indexPath.item]
        }
        return users[indexPath.item]
    }
    override func numberOfItems(_ section: Int) -> Int {
        switch section {
        case 0:
             return users.count
        default:
            return tweet.count
        }
       
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
}

