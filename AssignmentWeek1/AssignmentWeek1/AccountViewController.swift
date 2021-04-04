//
//  AccountViewController.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/04/04.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var pwCheckTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        idTextField.placeholder = "이메일 또는 전화번호"
        pwTextField.placeholder = "비밀번호"
        pwCheckTextField.placeholder = "비밀번호 확인"
        
        pwTextField.isSecureTextEntry = true
        pwCheckTextField.isSecureTextEntry = true
    }
    
    // 카카오 계정 만들기 버튼 클릭
    @IBAction func createBtn(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ConfirmViewController") as? ConfirmViewController else {return}
        
        nextVC.userID = idTextField.text
        nextVC.modalPresentationStyle = .fullScreen
        
        if idTextField.text?.isEmpty == false && pwTextField.text?.isEmpty == false {
            self.present(nextVC, animated: true, completion: nil)
        } else {  }
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
