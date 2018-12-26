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
    var image1: UIImage!
    var image2: UIImage!
    var image3: UIImage!
    var image4: UIImage!
    var image5: UIImage!
    var image6: UIImage!
    var image7: UIImage!
    var image8: UIImage!
    var image9: UIImage!
    var image10: UIImage!
    
    var flg = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // バンドルした画像ファイルを読み込み
        image1 = UIImage(named:"img1.pdf")
        image2 = UIImage(named:"img2.pdf")
        image3 = UIImage(named:"img3.pdf")
        image4 = UIImage(named:"img4.pdf")
        image5 = UIImage(named:"img5.pdf")
        image6 = UIImage(named:"img6.pdf")
        image7 = UIImage(named:"img7.pdf")
        image8 = UIImage(named:"img8.pdf")
        image9 = UIImage(named:"img9.pdf")
        image10 = UIImage(named:"img10.pdf")
        
    }
    @IBAction func tapped(_ sender: Any) {
        if flg {
            imageView.image = image1
            flg = false
        }
        else{
            imageView.image = image2
            flg = true
        }}
    
}

