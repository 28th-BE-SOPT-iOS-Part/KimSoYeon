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
        // Do any additional setup after loading the view.
        
        setUserIDLabel()
    }
    
    // 데이터 전달 받은 후 라벨에 표시
    func setUserIDLabel() {
        if let msg = self.userID {
            idLabel.text = "\(msg)님 가입이 완료되었습니다."
        }
    }
    
    @IBAction func confirmBtn(_ sender: Any) {
        
/*
        guard let presentingVC = self.presentingViewController else { return }
        let navigationController = presentingVC is UINavigationController ? presentingVC as? UINavigationController : presentingVC.navigationController
        self.dismiss(animated: true) {
            navigationController?.popToRootViewController(animated: false)
        }
 */
        let vc1 = self.presentingViewController
        self.dismiss(animated: true) {
            guard let mainVC = vc1 as? UINavigationController else { return }
            mainVC.popToRootViewController(animated: false)
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