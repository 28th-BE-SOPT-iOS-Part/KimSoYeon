//
//  ConfirmViewController.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/04/04.
//

import UIKit

class ConfirmViewController: UIViewController {
    
    @IBOutlet weak var idLabel: UILabel!
    var userID : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUserIDLabel()
    }
    
    // 데이터 전달 받은 후 라벨에 표시
    func setUserIDLabel() {
        if let msg = self.userID {
            idLabel.text = "\(msg)님 가입이 완료되었습니다."
        }
    }
    
    @IBAction func confirmBtn(_ sender: Any) {
        guard let presentingVC = self.presentingViewController else { return }
        
        let navigationController = presentingVC is UINavigationController ? presentingVC as? UINavigationController : presentingVC.navigationController
        self.dismiss(animated: true) {
            navigationController?.popToRootViewController(animated: false)
        }
    }

}
