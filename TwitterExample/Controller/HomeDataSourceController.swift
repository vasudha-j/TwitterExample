//
//  HomeDataSourceController.swift
//  TwitterExample
//
//  Created by Vasudha Jags on 10/26/17.
//  Copyright © 2017 Vasudha J. All rights reserved.
//


import LBTAComponents



class HomeDataSrouceController : DatasourceController{
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeDataSource = HomeDataSouce()
        self.datasource = homeDataSource
        setUpCustomNavigationBar()
    }
    
   
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = datasource?.item(indexPath) as? User{
            let approximatedWidth = view.frame.width - 12 - 50 - 12
            let size = CGSize(width: approximatedWidth, height: 1000)
            let attributes = [NSAttributedStringKey.font: UIFont.systemFont(ofSize: 16)]
            let estimatedFrame = NSString(string:user.bioText!).boundingRect(with:size , options: .usesLineFragmentOrigin ,attributes: attributes,context : nil)
            return CGSize(width: view.frame.width, height : estimatedFrame.height + 66)
        }
        return CGSize(width: view.frame.width, height: 150)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    } 
}

