//
//  TootTableViewCell.swift
//  windodon
//
//  Created by 渋江一晃 on 2018/09/02.
//  Copyright © 2018年 suzumi49n. All rights reserved.
//

import UIKit

class TootTableViewCell: UITableView {
    
    // アイコン表示
    @IBOutlet weak var iconImageView: UIImageView!
    
    // ディスプレイネームを表示
    @IBOutlet weak var displayNameLabel: UILabel!
    
    // idを表示
    @IBOutlet weak var idLabel: UILabel!
    
    // トゥート内容を表示
    @IBOutlet weak var tootContentLabel: UILabel!
    
    func fill(tweet: Toot) {
        // profileImageURLから画像をダウンロードしてくる処理
        let downloadTask = URLSession.shared.dataTask(with: URL(string: tweet.user.profileImageURL)!) { [weak self] data, response, error in
            if let error = error {
                print(error)
                return
            }
            
            DispatchQueue.main.async {
                // iconImageViewにダウンロードしてきた画像を代入する処理
                self?.iconImageView.image = UIImage(data: data!)
            }
        }
        downloadTask.resume()
        
        // tweetから値を取り出して、UIにセットする
        displayNameLabel.text = tweet.user.name
        tootContentLabel.text = tweet.text
        // screenNameには "@" が含まれていないので、頭に "@" を入れてあげる必要がある
        idLabel.text = "@" + tweet.user.screenName
    }
}
