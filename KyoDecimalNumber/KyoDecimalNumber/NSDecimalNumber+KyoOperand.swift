//
//  NSDecimalNumber+KyoOperand.swift
//  Kyo
//
//  Created by Kyo on 2019/8/25.
//  Copyright © 2019 liyu. All rights reserved.
//

import Foundation

// MARK: ------------------------- Operand

public extension NSDecimalNumber {
    
    static func +(origin: NSDecimalNumber?, num: NSDecimalNumber) -> NSDecimalNumber {
        return (origin ?? NSDecimalNumber.zero).adding(num)
    }
    
    static prefix func +(origin: NSDecimalNumber) -> NSDecimalNumber {
        return nil + origin
    }
    
    static func -(origin: NSDecimalNumber?, num: NSDecimalNumber) -> NSDecimalNumber {
        return (origin ?? NSDecimalNumber.zero).subtracting(num)
    }
    
    static prefix func -(origin: NSDecimalNumber) -> NSDecimalNumber {
        return nil - origin
    }
    
    static func *(origin: NSDecimalNumber, num: NSDecimalNumber) -> NSDecimalNumber {
        return origin.multiplying(by: num)
    }
    
    static func /(origin: NSDecimalNumber, num: NSDecimalNumber) -> NSDecimalNumber {
        return origin.dividing(by: num)
    }
    
    static func >(origin: NSDecimalNumber?, num: NSDecimalNumber) -> Bool {
        return (origin ?? NSDecimalNumber.zero).compare(num) != .orderedDescending ? false : true
    }
    
    static func >=(origin: NSDecimalNumber?, num: NSDecimalNumber) -> Bool {
        return (origin ?? NSDecimalNumber.zero).compare(num) != .orderedAscending ? true : false
    }
    
    static func <(origin: NSDecimalNumber?, num: NSDecimalNumber) -> Bool {
        return (origin ?? NSDecimalNumber.zero).compare(num) != .orderedAscending ? false : true
    }
    
    static func <=(origin: NSDecimalNumber?, num: NSDecimalNumber) -> Bool {
        return (origin ?? NSDecimalNumber.zero).compare(num) != .orderedDescending ? true : false
    }
    
    static func ==(origin: NSDecimalNumber?, num: NSDecimalNumber) -> Bool {
        return (origin ?? NSDecimalNumber.zero).compare(num) == .orderedSame ? true : false
    }
}

// MARK: ------------------------- Convert

public extension NSNumber {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(decimal: self.decimalValue)
    }
}

public extension String {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(string: self)
    }
}

public extension Float {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}

public extension Double {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}

public extension Bool {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}

public extension Int {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}

public extension UInt {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}

public extension Int8 {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}

public extension Int16 {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}

public extension Int32 {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}

public extension Int64 {
    func decimalNumber() -> NSDecimalNumber {
        return NSDecimalNumber(value: self)
    }
}
