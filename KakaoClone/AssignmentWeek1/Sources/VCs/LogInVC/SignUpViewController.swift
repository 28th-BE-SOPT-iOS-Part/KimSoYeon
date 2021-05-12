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
        idTextField.setTextFieldUnderLine()
        
        pwTextField.placeholder = "비밀번호"
        pwTextField.isSecureTextEntry = true
        pwTextField.setTextFieldUnderLine()
        
        pwCheckTextField.placeholder = "비밀번호 확인"
        pwCheckTextField.isSecureTextEntry = true
        pwCheckTextField.setTextFieldUnderLine()
    }
    
    
    @IBAction func createBtn(_ sender: Any) {
        
        if idTextField.text!.isEmpty || pwTextField.text!.isEmpty || pwCheckTextField.text!.isEmpty {
            
            return
        }
        
        SignupService.shared.signup(email: self.idTextField.text!, password: self.pwTextField.text!) { result in
            switch result
            {
            case .success(let message):
                if let message = message as? String{
                    self.makeAlert(title: "알림",
                                   message: message) { _ in
                        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "UITabBarController") as? UITabBarController else {return}
                        self.navigationController?.pushViewController(nextVC, animated: true)
                    }
                }
                
            case .requestErr(let message):
                if let message = message as? String{
                    self.makeAlert(title: "알림", message: message)
                }
                return
                
            default :
                print("ERROR")
            }
        }
        
    }

}

