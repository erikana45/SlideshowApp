//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 勝木えり on 2019/01/04.
//  Copyright © 2019 eri.katsuki. All rights reserved.
//

import UIKit


class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var resultimageView: UIImageView!
    var scaleimage : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画像を受け取る
        resultimageView.image = scaleimage
        //画像を拡大
        resultimageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        
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
