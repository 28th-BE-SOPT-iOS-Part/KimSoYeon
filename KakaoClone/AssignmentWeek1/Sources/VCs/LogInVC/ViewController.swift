//
//  ViewController.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/04/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.placeholder = "이메일 또는 전화번호"
        idTextField.setTextFieldUnderLine()
        
        pwTextField.placeholder = "비밀번호"
        pwTextField.isSecureTextEntry = true
        pwTextField.setTextFieldUnderLine()
    }
    
    // 카카오계정 로그인 버튼 클릭
    @IBAction func loginBtn(_ sender: Any) {
        if idTextField.text!.isEmpty || pwTextField.text!.isEmpty { return }
        
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "UITabBarController") as? UITabBarController else { return }
        
        nextVC.modalPresentationStyle = .fullScreen
        
        present(nextVC, animated: true, completion: nil)
    }
    
    // 새로운 카카오계정 만들기 버튼 클릭
    @IBAction func createBtn(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "SignUpViewController") as? SignUpViewController else {return}
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

