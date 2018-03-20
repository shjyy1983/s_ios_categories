//
//  ViewController.swift
//  s_ios_categories
//
//  Created by shjyy1983@163.com on 03/20/2018.
//  Copyright (c) 2018 shjyy1983@163.com. All rights reserved.
//

import UIKit
import s_ios_categories

class ViewController: UIViewController {
    lazy var box: UIView = {
        let box = UIView()
        box.backgroundColor = .green
        box.width = 100
        box.height = 100
        box.left = 10
        box.top = 74
        return box
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(box)
    }

}

