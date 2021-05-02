//
//  HomeViewController.swift
//  AssignmentWeek1
//
//  Created by soyeon on 2021/04/11.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var friendListTableView: UITableView!
    
    var userName: String = ""
    private var friendList : [FriendDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setFriendsList()
        
        friendListTableView.delegate = self
        friendListTableView.dataSource = self
        friendListTableView.separatorStyle = .none
    }
    
    func setFriendsList() {
        friendList.append(contentsOf: [
            FriendDataModel(imageName: "profileImage1",
                            name: "안솝트",
                            state: "배고파요"),
            
            FriendDataModel(imageName: "profileImage2",
                            name: "최솝트",
                            state: "피곤해요"),
            
            FriendDataModel(imageName: "profileImage3",
                            name: "정솝트",
                            state: "시험언제끝나죠?"),
            
            FriendDataModel(imageName: "profileImage4",
                            name: "이솝트",
                            state: "ㅠㅠㅠㅠ"),
            
            FriendDataModel(imageName: "profileImage5",
                            name: "유솝트",
                            state: "나는 상태메세지!"),
            
            FriendDataModel(imageName: "profileImage6",
                            name: "박솝트",
                            state: "원하는대로 바꿔보세요 ^_^"),
            
            FriendDataModel(imageName: "profileImage7",
                            name: "최솝트",
                            state: "넘 덥다.."),
            
            FriendDataModel(imageName: "profileImage8",
                            name: "원솝트",
                            state: "배고파요"),
            
            FriendDataModel(imageName: "profileImage9",
                            name: "투솝트",
                            state: "내꿈은 대나무부자"),
            
            FriendDataModel(imageName: "profileImage10",
                            name: "권솝트",
                            state: "걱정말라구!")
        ])
    }
    
    @IBAction func settingButtonTouchUp(_ sender: Any) {
        let alertController = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        alertController.addAction(UIAlertAction(title: "편집", style: .default, handler: nil))
        alertController.addAction(UIAlertAction(title: "친구 관리", style: .default, handler: nil))
        alertController.addAction(UIAlertAction(title: "전체 설정", style: .default, handler: nil))
        alertController.addAction(UIAlertAction(title: "취소", style: .cancel, handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
}

extension HomeViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 73
        }
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MyProfileCell.identifier) as? MyProfileCell else {
                return UITableViewCell()
            }
            cell.setData(imageName: "friendtabProfileImg", name: "김솝트", state: "상태 메세지는 여기에")
            return cell
        }
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendListCell.identifier) as? FriendListCell else {
            return UITableViewCell()
        }
        
        cell.selectionStyle = .none
        cell.setData(imageName: friendList[indexPath.row].imageName, name: friendList[indexPath.row
        ].name, state: friendList[indexPath.row].state)
        
        return cell
    }
    
    
}

extension HomeViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title:  "차단", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
            success(true)
        })
        let shareAction = UIContextualAction(style: .normal, title:  "숨김", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
            success(true)
        })
        return UISwipeActionsConfiguration(actions:[deleteAction,shareAction])
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let nextVC = self.storyboard?.instantiateViewController(identifier: "ProfileViewController") as? ProfileViewController else { return }

        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
}
