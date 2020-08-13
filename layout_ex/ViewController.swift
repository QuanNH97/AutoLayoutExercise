//
//  ViewController.swift
//  layout_ex
//
//  Created by Quan Nguyen on 8/13/20.
//  Copyright © 2020 quannh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        halfScreenView.layer.cornerRadius = halfScreenView.bounds.width / 11
        callNow.layer.cornerRadius = callNow.bounds.height / 2
        sendSms.layer.cornerRadius = callNow.bounds.height / 2
        usaView.layer.cornerRadius = callNow.bounds.height / 3
    }

    @IBOutlet weak var halfScreenView: UIView!
    @IBOutlet weak var callNow: UIButton!
    @IBOutlet weak var sendSms: UIButton!
    @IBOutlet weak var homeTabbarItem: UITabBarItem!
    @IBOutlet weak var usaView: UIButton!
}

