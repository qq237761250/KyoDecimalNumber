//
//  ViewController.swift
//  KyoDecimalNumberDemo
//
//  Created by Kyo on 2020/5/30.
//  Copyright © 2020 Kyo. All rights reserved.
//

import UIKit
import KyoDecimalNumber

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(NSDecimalNumber.zero.kyo_formatTwoDecimals())
        print(NSDecimalNumber.zero.kyo_roundUp(type: String.self))
        print((NSDecimalNumber.zero + NSDecimalNumber(string: "20.435")).kyo_roundUp(type: String.self))
        print(1.kyo_toDecimalNumber() + 2.33.kyo_toDecimalNumber())
    }


}

