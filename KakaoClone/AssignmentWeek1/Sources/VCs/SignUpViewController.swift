//
//  AccountViewController.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/04/04.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var pwCheckTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.placeholder = "이메일 또는 전화번호"
        pwTextField.placeholder = "비밀번호"
        pwTextField.isSecureTextEntry = true
        
        pwCheckTextField.placeholder = "비밀번호 확인"
        pwCheckTextField.isSecureTextEntry = true
    }
    
    // 카카오 계정 만들기 버튼 클릭
    @IBAction func createBtn(_ sender: Any) {
        if idTextField.text!.isEmpty || pwTextField.text!.isEmpty || pwCheckTextField.text!.isEmpty {
            return
        }
        
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "UITabBarController") as? UITabBarController else {return}
        
        
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
   
}
