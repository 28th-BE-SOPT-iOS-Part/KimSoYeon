//
//  MoreViewController.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/05/03.
//

import UIKit

class MoreViewController: UIViewController {

    
    @IBOutlet weak var moreCollectionView: UICollectionView!
    
    private var moreList : [MoreDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setData()
        moreCollectionView.delegate = self
        moreCollectionView.dataSource = self
    }
    
    func setData() {
        moreList.append(contentsOf: [
            MoreDataModel(imageName: "settingIcon", title: "메일"),
            
            MoreDataModel(imageName: "settingIcon", title: "캘린더"),
            
            MoreDataModel(imageName: "settingIcon", title: "서랍"),
            
            MoreDataModel(imageName: "settingIcon", title: "카카오콘"),
            
            MoreDataModel(imageName: "settingIcon", title: "메이커스"),
            
            MoreDataModel(imageName: "settingIcon", title: "선물하기"),
            
            MoreDataModel(imageName: "settingIcon", title: "이모티콘"),
            
            MoreDataModel(imageName: "settingIcon", title: "프렌즈"),
            
            MoreDataModel(imageName: "settingIcon", title: "쇼핑하기"),
            
            MoreDataModel(imageName: "settingIcon", title: "스타일"),
            
            MoreDataModel(imageName: "settingIcon", title: "주문하기"),
            
            MoreDataModel(imageName: "settingIcon", title: "멜론티켓"),
            
            MoreDataModel(imageName: "settingIcon", title: "게임"),
            
            MoreDataModel(imageName: "settingIcon", title: "멜론"),
            
            MoreDataModel(imageName: "settingIcon", title: "헤어샵"),
            
            MoreDataModel(imageName: "settingIcon", title: "전체서비스"),
        ])
    }

}

extension MoreViewController : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return moreList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let moreCell = collectionView.dequeueReusableCell(withReuseIdentifier: MoreListCollectionViewCell.identifier,
                                                                 for: indexPath)
                as? MoreListCollectionViewCell
        else {return UICollectionViewCell() }
        
        moreCell.setData(imageName: moreList[indexPath.row].imageName, title: moreList[indexPath.row].title)
        
        return moreCell
    }
    
    
}

extension MoreViewController : UICollectionViewDelegate {
    
}

extension MoreViewController : UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (70/375)
        let cellHeight = cellWidth * (70/70)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 19
    }
}
