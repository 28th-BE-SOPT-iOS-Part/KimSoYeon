//
//  MyProfileCell.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/05/02.
//

import UIKit

class MyProfileCell: UITableViewCell {
    
    static let identifier = "MyProfileCell"

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    var actionButton: (() -> Void)? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(imageName: String, name: String, state: String) {
        if let image = UIImage(named: imageName)
        {
            profileImageView.image = image
        }
        nameLabel.text
         = name
        stateLabel.text = state
    }
}
