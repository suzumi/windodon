//
//  TimelineViewController.swift
//  windodon
//
//  Created by 渋江一晃 on 2018/09/02.
//  Copyright © 2018年 suzumi49n. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    // テーブル表示用のデータソース
    var toots: [Toot] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // ダミーデータの生成
        let user = User(id: "1", idName: "ktanaka117", displayName: "ダンボー田中", profileImageURL: "https://pbs.twimg.com/profile_images/832034247414206464/PCKoQRPD.jpg")
        let toot = Toot(id: "01", text: "Twitterクライアント作成なう", user: user)
        
        let toots = [toot]
        self.toots = toots
        
        // tableViewのリロード
        tableView.reloadData()
        
//        tableView.delegate = self
//        // dataSourceの指定を自分自身(self = TimelineViewController)に設定
//        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

//extension TimelineViewController: UITableViewDelegate {
//    // 何個のcellを生成するかを設定する関数
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // tweetsの配列内の要素数分を指定
//        return toots.count
//    }
//
//    // 描画するcellを設定する関数
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        // TweetTableViewCellを表示したいので、TweetTableViewCellを取得
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TootTableViewCell") as! TootTableViewCell
//
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("セルがタップされたよ")
//    }
//
//    // セルの見積もりの高さを指定する処理
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
//
//    // セルの高さ指定をする処理
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        // UITableViewCellの高さを自動で取得する値
//        return UITableViewAutomaticDimension
//    }
//}
//
//extension TimelineViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return toots.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "TootTableViewCell") as! TootTableViewCell
//
//        // TweetTableViewCellの描画内容となるtweetを渡す
//        cell.fill(tweet: toots[indexPath.row])
//
//        return cell
//    }
//}
