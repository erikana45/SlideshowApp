//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 勝木えり on 2019/01/04.
//  Copyright © 2019 eri.katsuki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    
    @IBOutlet weak var scaleimageView: UIImageView!
    var transScale = CGAffineTransform()
    
    // 画面の横幅を取得
    var screenWidth:CGFloat!
    var screenHeight:CGFloat!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画像を拡大
        transScale = CGAffineTransform(scaleX: 2, y: 2)
        scaleimageView.transform = transScale
        
        // Do any additional setup after loading the view.
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
