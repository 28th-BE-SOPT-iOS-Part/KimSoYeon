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
        // Do any additional setup after loading the view.
        idTextField.placeholder = "이메일 또는 전화번호"
        pwTextField.placeholder = "비밀번호"
        pwTextField.isSecureTextEntry = true
    }
    
    // 카카오계정 로그인 버튼 클릭
    @IBAction func loginBtn(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ConfirmViewController") as? ConfirmViewController else {return}
        
        nextVC.userID = idTextField.text
        nextVC.modalPresentationStyle = .fullScreen
        
        if idTextField.text?.isEmpty == false && pwTextField.text?.isEmpty == false {
            self.present(nextVC, animated: true, completion: nil)
        } else {  }
    }
    
    // 새로운 카카오계정 만들기 버튼 클릭
    @IBAction func createBtn(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "AccountViewController") as? AccountViewController else {return}
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
}

