//
//  HomeViewController.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/04/11.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var profileImgView: UIImageView!
    
    var userName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(self.profileImgTapped))
        profileImgView.addGestureRecognizer(tapGR)
        profileImgView.isUserInteractionEnabled = true
    }
    
    @objc func profileImgTapped(sender: UITapGestureRecognizer) {
        if sender.state == .ended {
            print("UIImageView tapped")
            guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ProfileViewController") as? ProfileViewController else { return }
            
            nextVC.modalPresentationStyle = .fullScreen
            present(nextVC, animated: true, completion: nil)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
