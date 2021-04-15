//
//  UITextField.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/04/14.
//

import Foundation
import UIKit

extension UITextField {
    func setTextFieldUnderLine() {
        let border = CALayer()
        border.frame = CGRect(x: 0, y: self.frame.size.height-3, width: self.frame.width-40, height: 1)
        border.backgroundColor = UIColor.darkGray.withAlphaComponent(0.3).cgColor
        self.layer.addSublayer(border)
        self.borderStyle = .none
    }
}
