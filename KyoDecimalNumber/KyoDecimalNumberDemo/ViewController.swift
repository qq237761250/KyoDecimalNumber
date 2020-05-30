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
        
        print(NSDecimalNumber.zero.kyo_formatTwoDecimals())
        print(NSDecimalNumber.zero.kyo_roundUp(type: String.self))
        
    }


}

