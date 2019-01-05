//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 勝木えり on 2018/12/26.
//  Copyright © 2018 eri.katsuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // 初期画像の表示
        imageView.image = UIImage(named: "img1.pdf")
        
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているscaleimageViewにimageViewを渡す
        resultViewController.scaleimageView = imageView
    }
    
    
    @IBAction func onTapImage(_ sender: Any) {
        // セグエを使用して画面を遷移
       performSegue(withIdentifier:"result", sender: nil)
    }
    
    
    /// 一定の間隔で処理を行うためのタイマー
    var timer: Timer?
    // タイマー用の時間のための変数
    var timer_sec: Float = 0
    /// セレクターの定義
    @objc func onTimer(_timer: Timer){
        //2.0秒ごとに
        self.timer_sec += 2.0
        // 表示している画像の番号を1増やす
        dispImageNo += 1
        // 表示している画像の番号を元に画像を表示する
        displayImage()
    }
    
    
    
    //進むボタンのアクション
    @IBAction func onAdv(_ sender: Any) {
        //タイマーが動いていない時に
        if self.timer == nil{
        // 表示している画像の番号を1増やす
        dispImageNo += 1
        // 表示している画像の番号を元に画像を表示する
        displayImage()
      }
     }
    
    //戻るボタンのアクション
    @IBAction func onPrev(_ sender: Any) {
        //タイマーが動いていない時に
        if self.timer == nil{
        // 表示している画像の番号を1減らす
        dispImageNo -= 1
        // 表示している画像の番号を元に画像を表示する
        displayImage()
      }
    }
    
    //再生・停止ボタンのアクション
    @IBOutlet weak var startstopButton: UIButton!
    @IBAction func startstop(_ sender: Any) {
        //タイマーが動いていない時に動作
        if self.timer == nil{
            // タイマーを設定
            self.timer = Timer.scheduledTimer(timeInterval:2.0, target: self, selector: #selector(onTimer), userInfo: nil, repeats: true)
            //ボタン表示を「停止」に切り替え
            startstopButton.setTitle("停止", for: .normal)
        }else{
           //タイマーを停止する
            self.timer!.invalidate()
            self.timer = nil
          //ボタン表示を「再生」に切り替え
            startstopButton.setTitle("再生", for: .normal)
        }
    }
    
   
    
    
    
    /// 表示している画像の番号
    var dispImageNo = 0
    
    /// 表示している画像の番号を元に画像を表示する
    func displayImage() {
        
    // 画像の名前の配列
    let imageNameArray = ["img1.pdf",
            "img2.pdf",
            "img3.pdf",
            "img4.pdf",
            "img5.pdf",
            "img6.pdf",
            "img7.pdf",
            "img8.pdf",
            "img9.pdf",
            "img10.pdf"
            ]
        
        // 範囲より下を指している場合、最後の画像を表示
        if dispImageNo < 0 {
            dispImageNo = 9
        }
        
        // 範囲より上を指している場合、最初の画像を表示
        if dispImageNo > 9 {
            dispImageNo = 0
        }
        // 表示している画像の番号から名前を取り出し
        let name = imageNameArray[dispImageNo]
        // 画像を読み込み
        let image = UIImage(named: name)
        // Image Viewに読み込んだ画像をセット
        imageView.image = image
    }

    
}




