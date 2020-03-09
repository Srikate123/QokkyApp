//
//  StoreMainTableViewCell.swift
//  QokkyAppProject
//
//  Created by Phongsakorn Srikate on 2/3/2563 BE.
//  Copyright © 2563 Phongsakorn Srikate. All rights reserved.
//

import UIKit

class StoreMainTableViewCell: UITableViewCell {

    
     @IBOutlet weak var FrontImageCollectionView:UICollectionView!
     @IBOutlet weak var HotRewardStoreCollectionView:UICollectionView!
     @IBOutlet weak var  RewardStoreCollectionView:UICollectionView!
     
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.FrontImageCollectionView.delegate = self
        self.FrontImageCollectionView.dataSource = self
        self.HotRewardStoreCollectionView.delegate = self
        self.HotRewardStoreCollectionView.dataSource = self
        self.RewardStoreCollectionView.delegate = self
        self.RewardStoreCollectionView.dataSource = self
        
      
      
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
  

}
    extension StoreMainTableViewCell:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
       
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == FrontImageCollectionView){
            return 4
        }else if(collectionView == HotRewardStoreCollectionView){
            return 4
        }else if(collectionView == RewardStoreCollectionView){
            return 4
        }
        else{
            return 5
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if(collectionView == FrontImageCollectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrontImageCollectionViewCell", for: indexPath) as! FrontImageCollectionViewCell
            return cell
        }else if(collectionView == RewardStoreCollectionView){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RewardStoreCollectionViewCell", for: indexPath) as! RewardStoreCollectionViewCell
                      return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HotRewardStoreCollectionViewCell", for: indexPath) as! HotRewardStoreCollectionViewCell
                      return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if (collectionView == FrontImageCollectionView){
            return CGSize(width: 375, height: 294)
        }else if(collectionView == HotRewardStoreCollectionView){
            return CGSize(width: 240, height: 143)
        }else if(collectionView == RewardStoreCollectionView){
            return CGSize(width: 335, height: 149)
        }
        else{
            return CGSize(width: 125, height: 54)
        }
    }
    
}
    
    

