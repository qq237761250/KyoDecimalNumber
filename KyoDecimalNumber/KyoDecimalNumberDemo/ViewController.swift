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
        print(NSDecimalNumber.zero.roundUp(type: String.self))
        print((NSDecimalNumber.zero + NSDecimalNumber(string: "20.435")).roundUp(type: String.self))
        print(1.decimalNumber() + 2.33.decimalNumber())
    }

}

