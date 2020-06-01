# KyoDecimalNumber
> A simple extension that makes it easy to manipulate NSDecimalNumber!
# Features
* Simplify rounding operations in NSDecimalnumber.
* Extends the conversion of common data types to NSDecimalNumber.
* The custom operator enables `+` `-` `*` `/` `>` `>=` `<` `<=` `==` to be used directly on NSDecimalNumber.
# Start with KyoDecimalNumber
### Round
You can provide the reserved number of decimal places and specify whether the data type returned is String or NSDecimalNumber.

```swift
var price = NSDecimalNumber(string: "15.54321")
price = price.roundUp()  //NSDecimalNumber -> 15.54
var strPrice: String = price.roundUp()  //String -> 15.54
strPrice = price.roundUp(fractionNum: 1)  //String -> 15.5
let string = price.roundUp(type: String.self)  //String -> 15.54
let decimalNumber = price.roundUp(type: NSDecimalNumber.self)  //NSDecimalNumber -> 15.54
```

### Conversion
Currently supports `NSNumber` `String` `Float` `Double` `Bool` `Int` `UInt` `Int8` `Int16` `Int32` `Int64`  conversion to NSDecimalNumber.

```swift
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
```

### Custom Operator
You can use common operators on NSDecimalNumber just like value types.

```swift
var decimalNumber: NSDecimalNumber = 23.2.decimalNumber() + "15.2".decimalNumber()  //38.4
decimalNumber = nil - 15.23.decimalNumber() //-15.23
decimalNumber = decimalNumber * 2.1 //-31.983
decimalNumber = decimalNumber / "2".decimalNumber() //-15.9915
print("12".decimalNumber() >= 12) //true
print(11.decimalNumber() > 12)  //false
print(12.decimalNumber() == "12.00".decimalNumber()) //true
print(true.decimalNumber() <= "0".decimalNumber()) //false
print(100.01.decimalNumber() < 100.02) //true
```

# Installation
### CocoaPods
[CocoaPods](https://cocoapods.org/) is a dependency manager for Cocoa projects. You can install it with the following command:

```
$ gem install cocoapods
```

To integrate KyoDecimalNumber into your Xcode project using CocoaPods, specify it to a target in your Podfile:

```shell
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '11.0'
use_frameworks!

target '<Your Target Name>' do
  # your other pod
  # ...
  pod 'KyoDecimalNumber', '~> 0.0.4'
end
```

### Manually
if you prefer not to use the aforementioned dependency managers, you can integrate KyoDecimalNumber into your project manually. 
* Clone or download KyoDecimalNumber to your computer.
* Open the KyoDecimalNumber folder, and drag `NSDecimalNumber+KyoOperand.swift` `NSDecimalNumber+KyoRoundUp.swift` into the file navigator of your app project, under your app project.
* Drag `NSDecimalNumber+KyoConvert.h` `NSDecimalNumber+KyoConvert.m` to your project if you use Objective-C.

# License

> KyoDecimalNumber is released under the MIT license.

MIT License

Copyright (c) 2020 Live

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
