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
            idLabel.text = "\(msg)님"
        }
    }
    
    // 확인 버튼 클릭 
    @IBAction func confirmBtn(_ sender: Any) {
        // presentingVC -> 현재 뷰를 호출한 뷰(이전의 뷰)
        guard let presentingVC = self.presentingViewController else { return }
        let navigationController = presentingVC is UINavigationController ? presentingVC as? UINavigationController : presentingVC.navigationController
        // 네비게이션 컨트롤러의 popToRootViewController를 사용해 맨 처음 로그인 화면으로 이동
        self.dismiss(animated: true) {
            navigationController?.popToRootViewController(animated: false)
        }
        
//        self.dismiss(animated: true, completion: nil)
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
