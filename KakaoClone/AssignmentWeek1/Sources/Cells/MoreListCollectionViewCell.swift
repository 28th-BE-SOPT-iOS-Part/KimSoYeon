//
//  MoreListCollectionViewCell.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/05/03.
//

import UIKit

class MoreListCollectionViewCell: UICollectionViewCell {
    static let identifier : String = "MoreListCollectionViewCell"
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setData(imageName: String, title: String) {
        if let image = UIImage(named: imageName) {
            iconImageView.image = image
        }
        titleLabel.text = title
    }
}
