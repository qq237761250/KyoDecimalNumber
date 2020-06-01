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
        print(NSDecimalNumber.zero.round(type: String.self))
        print((NSDecimalNumber.zero + NSDecimalNumber(string: "20.435")).round(type: String.self))
        print(1.decimalNumber() + 2.33.decimalNumber())
        
        testRound()
        testConversion()
        testCustomOperator()
    }
    
    func testRound() {
        var price = NSDecimalNumber(string: "15.54321")
        price = price.round() //NSDecimalNumber -> 15.54
        var strPrice: String = price.round()    //String -> 15.54
        strPrice = price.round(fractionNum: 1)    //String -> 15.5
        let string = price.round(type: String.self)   //String -> 15.54
        let decimalNumber = price.round(type: NSDecimalNumber.self)   //NSDecimalNumber -> 15.54
    }
    
    func testConversion() {
        let number: NSNumber = NSNumber(value: 32)
        let fromNumber = number.decimalNumber()
        let string: String = "32"
        let fromString = string.decimalNumber()
        let float: Float = 32.22
        let fromFloat = float.decimalNumber()
        let double: Double = 32.22
        let fromDouble = double.decimalNumber()
        let bool: Bool = true
        let fromBool = bool.decimalNumber()
        let int: Int = 32
        let fromInt = int.decimalNumber()
        let uint: UInt = 32
        let fromUInt = uint.decimalNumber()
        let int8: Int8 = 32
        let fromInt8 = int8.decimalNumber()
        let int16: Int16 = 32
        let fromInt16 = int16.decimalNumber()
        let int32: Int32 = 32
        let fromInt32 = int32.decimalNumber()
        let int64: Int64 = 32
        let fromInt64 = int64.decimalNumber()
    }
    
    func testCustomOperator() {
        var decimalNumber: NSDecimalNumber = 23.2.decimalNumber() + "15.2".decimalNumber()  //38.4
        decimalNumber = nil - 15.23.decimalNumber() //-15.23
        decimalNumber = decimalNumber * 2.1 //-31.983
        decimalNumber = decimalNumber / "2".decimalNumber() //-15.9915
        print("12".decimalNumber() >= 12) //true
        print(11.decimalNumber() > 12)  //false
        print(12.decimalNumber() == "12.00".decimalNumber()) //true
        print(true.decimalNumber() <= "0".decimalNumber()) //false
        print(100.01.decimalNumber() < 100.02) //true
    }

}
