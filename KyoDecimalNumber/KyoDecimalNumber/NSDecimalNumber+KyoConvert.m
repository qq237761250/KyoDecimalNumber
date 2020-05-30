//
//  NSDecimalNumber+KyoConvert.m
//  MainApp
//
//  Created by Kyo on 10/17/16.
//  Copyright © 2016 hzins. All rights reserved.
//

#import "NSDecimalNumber+KyoConvert.h"

@implementation NSDecimalNumber (KyoConvert)

/**< 保留2为小数（采用四舍五入） */
- (NSString *)kyo_formatTwoDecimals {
    NSDecimalNumberHandler *roundUp = [NSDecimalNumberHandler
                                       decimalNumberHandlerWithRoundingMode:NSRoundPlain  //四舍五入
                                       scale:2
                                       raiseOnExactness:NO
                                       raiseOnOverflow:NO
                                       raiseOnUnderflow:NO
                                       raiseOnDivideByZero:YES];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    formatter.numberStyle = kCFNumberFormatterNoStyle;
    formatter.maximumFractionDigits = 2;    //小数位最多2位
    formatter.minimumFractionDigits = 2;    //小数位最少2位
    formatter.minimumIntegerDigits = 1;    //整数位最少1位
    NSString *str = [formatter stringFromNumber:[self decimalNumberByRoundingAccordingToBehavior:roundUp]];
    return str;
}

/**< 保留2为小数（采用四舍五入） */
- (NSDecimalNumber *)kyo_TwoDecimals {
    NSDecimalNumberHandler *roundUp = [NSDecimalNumberHandler
    decimalNumberHandlerWithRoundingMode:NSRoundPlain  //四舍五入
    scale:2
    raiseOnExactness:NO
    raiseOnOverflow:NO
    raiseOnUnderflow:NO
    raiseOnDivideByZero:YES];
    return [self decimalNumberByRoundingAccordingToBehavior:roundUp];
}

/**< 把当前以分为单位的self转换为人民币格式的字符串 */
- (NSString *)kyo_convertFenToCurrencyYuan {
    NSDecimalNumber *yuan = [NSDecimalNumber decimalNumberWithMantissa:abs([self intValue])
                                                              exponent:-2   //10的-2次方
                                                            isNegative:[self integerValue] < 0 ? YES : NO]; //指定符号是正还是负（yes负数，no正数）
    NSDecimalNumberHandler *roundUp = [NSDecimalNumberHandler
                                       decimalNumberHandlerWithRoundingMode:NSRoundPlain  //四舍五入
                                       scale:2
                                       raiseOnExactness:NO
                                       raiseOnOverflow:NO
                                       raiseOnUnderflow:NO
                                       raiseOnDivideByZero:YES];
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
    formatter.numberStyle = kCFNumberFormatterCurrencyStyle;
    NSString *strYuan = [formatter stringFromNumber:[yuan decimalNumberByRoundingAccordingToBehavior:roundUp]];
    return strYuan;
}

/**< 把当前以分为单位的self转换为人民币格式的字符串（去掉3为数一个逗号的分隔符） */
- (NSString *)kyo_convertFenToCurrencyYuanWithoutSeparate {
    return [self kyo_convertFenToCurrencyYuan:NO withDecimal:YES];
}

/**< 把当前以分为单位的self转换为人民币格式的字符串（去掉3为数一个逗号的分隔符）并把人民币的的字符删除 */
- (NSString *)kyo_convertFenToCurrencyYuanWithoutSeparateAndDeleteRMBMark{
    NSString * str = [self kyo_convertFenToCurrencyYuan:NO withDecimal:YES];
    return [str stringByReplacingOccurrencesOfString:@"￥" withString:@""];
}
/**< 把当前以分为单位的self转换为人民币格式的字符串（separate：是否需要3位数一个逗号的分隔符   decimal：是否需要小数点后面的数） */
- (NSString *)kyo_convertFenToCurrencyYuan:(BOOL)separate withDecimal:(BOOL)decimal {
    NSString *yuan = [self kyo_convertFenToCurrencyYuan];
    
    if (!separate) {
        yuan = [yuan stringByReplacingOccurrencesOfString:@"," withString:@""];
    }
    
    if (!decimal) {
        yuan = [yuan substringToIndex:yuan.length - 3];
    }
    
    return yuan;
}

- (NSDecimalNumber *)convertNSStringToCurrencyFenWithSting:(NSString *)str {
    NSDecimalNumber*coupon = [NSDecimalNumber decimalNumberWithString:str];
    NSDecimalNumber*discount = [NSDecimalNumber decimalNumberWithString:@"100"];
    NSDecimalNumber *afterDiscount = [coupon decimalNumberByMultiplyingBy:discount];
    return afterDiscount;
}

@end
