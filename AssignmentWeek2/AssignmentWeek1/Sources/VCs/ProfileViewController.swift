//
//  ProfileViewController.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/04/11.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        swipeDownToDismiss()
    }
    
    @IBAction func closeBtnClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - swipe로 화면 dismiss
    func swipeDownToDismiss() {
        let swipeAction = UISwipeGestureRecognizer(target: self, action: #selector(swipeDown))
        swipeAction.direction = .down
        self.view.addGestureRecognizer(swipeAction)
      }
    
    @objc func swipeDown() {
        self.dismiss(animated: true, completion: nil)
      }
}
