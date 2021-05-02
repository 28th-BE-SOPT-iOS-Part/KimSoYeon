//
//  FriendListCell.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/05/02.
//

import UIKit

class FriendListCell: UITableViewCell {
    static let identifier = "FriendListCell"

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
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
