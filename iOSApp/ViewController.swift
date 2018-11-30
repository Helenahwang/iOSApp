//
//  ViewController.swift
//  iOSApp
//
//  Created by 502 on 2018. 11. 26..
//  Copyright © 2018년 502. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func moveMemo(_ sender: Any) {
        let memoListVC =
            self.storyboard?.instantiateViewController(withIdentifier: "MemoListVC") as? MemoListVC
        memoListVC?.navigationItem.title = "메모 목록"
        self.navigationController?.pushViewController(memoListVC!, animated: true)
    }
    @IBAction func MoveMovie(_ sender: Any) {
        //하위 뷰 컨트롤러 객체 만들기
        let movieListController =
           self.storyboard?.instantiateViewController(withIdentifier: "MovieListController") as! MovieListController
        
        let theaterListController =
            self.storyboard?.instantiateViewController(withIdentifier: "TheaterListController") as! TheaterListController
        
        //네비게이션 컨트롤러가 있을 때는 바로 푸시를 하면 됩니다.
        //없을 때는 네비게이션 컨트롤러를 만들고 네비게이션 컨트롤러를 present로 출력
        //뒤로 버튼을 새로 만들기
        self.navigationItem.backBarButtonItem =
            UIBarButtonItem(title: "메인화면", style: .done, target: nil, action: nil)
       //탭 바 컨트롤러 생성
        let tabbarController = UITabBarController()
        tabbarController.viewControllers = [movieListController, theaterListController]
        
        //네비게이션으로 이동
self.navigationController?.pushViewController(
    tabbarController, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "포트폴리오"
        
        if let revealVC = self.revealViewController(){
            let btn = UIBarButtonItem()
            btn.image = UIImage(named:"sidemenu.png")
            btn.target = revealVC
            btn.action = #selector(revealVC.revealToggle(_:))
            self.navigationItem.leftBarButtonItem = btn
            self.view.addGestureRecognizer(
                revealVC.panGestureRecognizer())
        }
        
    }


}

