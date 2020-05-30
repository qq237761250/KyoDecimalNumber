//
//  NSDecimalNumber+KyoRoundUp.swift
//  LiYu
//
//  Created by Kyo on 2019/8/25.
//  Copyright © 2019 liyu. All rights reserved.
//

import Foundation

public protocol KyoRoundUp {}
extension String: KyoRoundUp {}
extension NSDecimalNumber: KyoRoundUp {}

public extension NSDecimalNumber {
    
    /// 四舍五入
    ///
    /// - Parameters:
    ///   - fractionNum: 保留小数位的数量，不传则默认为保留2位小数
    ///   - identifier: 格式化采用的货币类型，默认"zh_CN"，即rmb
    /// - Returns: 返回指定类型数据
    func kyo_roundUp<T>(fractionNum: Int = 2, localeIdentifier identifier: String = "zh_CN") -> T where T: KyoRoundUp {
        return self.kyo_roundUp(type: T.self, fractionNum: fractionNum, localeIdentifier: identifier)
    }
    
    /// 四舍五入
    ///
    /// - Parameters:
    ///   - type: 枚举类型，在print或定义变量不指定类型时需要用指定这个参数
    ///   - fractionNum: 保留小数位的数量，不传则默认为保留2位小数
    ///   - identifier: 格式化采用的货币类型，默认"zh_CN"，即rmb
    /// - Returns: 返回指定类型数据
    func kyo_roundUp<T>(type: T.Type, fractionNum: Int = 2, localeIdentifier identifier: String = "zh_CN") -> T where T: KyoRoundUp {
        let handler: NSDecimalNumberHandler = NSDecimalNumberHandler(roundingMode: .plain,
                                                                     scale: Int16(fractionNum),
                                                                     raiseOnExactness: false,
                                                                     raiseOnOverflow: false,
                                                                     raiseOnUnderflow: false,
                                                                     raiseOnDivideByZero: true)
        let roundUpNumber: NSDecimalNumber = self.rounding(accordingToBehavior: handler)
        
        if T.self is NSDecimalNumber.Type {
            return roundUpNumber as! T
        }
        
        if T.self is String.Type {
            let formatter: NumberFormatter = NumberFormatter()
            formatter.locale = Locale(identifier: identifier)
            formatter.numberStyle = .none   //不需要格式
            formatter.maximumFractionDigits = fractionNum    //小数位最多2位
            formatter.minimumFractionDigits = fractionNum    //小数位最少2位
            formatter.minimumIntegerDigits = 1    //整数位最少1位
            let strFormatter: String = formatter.string(from: roundUpNumber) ?? self.stringValue
            return strFormatter as! T
        }
        
        return self as! T
    }
}
