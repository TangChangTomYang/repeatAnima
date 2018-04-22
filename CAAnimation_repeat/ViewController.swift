//
//  ViewController.swift
//  CAAnimation_repeat
//
//  Created by yangrui on 2018/4/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

import UIKit
import QuartzCore


class ViewController: UIViewController {

    @IBOutlet weak var rotateImgV: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startRotation()
    }


}


// MARK:- 无限旋转动画
extension ViewController{
    
    
    func startRotation ()  {
        
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")
        
        rotationAnim.fromValue = 0
        rotationAnim.toValue = Double.pi * 2.0
        rotationAnim.duration = 15
        
        rotationAnim.repeatCount = MAXFLOAT
        // 设置这个属性为false可以保证页面从消失 -> 再次重现时 动画依然在动, 即页面消失后动画不会停
        rotationAnim.isRemovedOnCompletion = false
        
        rotateImgV.layer.add(rotationAnim, forKey: nil)
    }

    
    
}
