//
//  MarqueeViewController.swift
//  JXMarqueeView
//
//  Created by jiaxin on 2018/5/1.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

import UIKit

class MarqueeViewController: UIViewController {
    var marqueeType: JXMarqueeType?
    private let marqueeView = JXMarqueeView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        let label = UILabel()
        label.textColor = UIColor.red
        label.font = UIFont.systemFont(ofSize: 100, weight: .medium)
        label.text = "abc"//defghijklmnopqrstuvwxyz"

        marqueeView.contentView = label
        marqueeView.backgroundColor = UIColor.lightGray
        marqueeView.contentMargin = 50
        marqueeView.pointsPerFrame = 3
        marqueeView.marqueeType = marqueeType!
        marqueeView.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)

        marqueeView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        self.view.addSubview(marqueeView)

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

//      marqueeView.bounds = CGRect(x:0, y:0, width: view.frame.width, height: view.frame.height)
//        marqueeView.center = self.view.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
