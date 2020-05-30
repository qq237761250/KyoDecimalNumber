//
//  NSDecimalNumber+KyoConvert.h
//  Kyo
//
//  Created by Kyo on 10/17/16.
//  Copyright © 2016 Kyo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDecimalNumber (KyoConvert)

- (NSString *_Nonnull)kyo_formatTwoDecimals;    /**< 保留2为小数（采用四舍五入） */
- (NSDecimalNumber *_Nonnull)kyo_TwoDecimals;    /**< 保留2为小数（采用四舍五入） */

- (NSString *_Nonnull)kyo_convertFenToCurrencyYuan; /**< 把当前以分为单位的self转换为人民币格式的字符串 */
- (NSString *_Nonnull)kyo_convertFenToCurrencyYuanWithoutSeparate; /**< 把当前以分为单位的self转换为人民币格式的字符串（去掉3为数一个逗号的分隔符） */
- (NSString *_Nonnull)kyo_convertFenToCurrencyYuan:(BOOL)separate withDecimal:(BOOL)decimal;  /**< 把当前以分为单位的self转换为人民币格式的字符串（separate：是否需要3位数一个逗号的分隔符   decimal：是否需要小数点后面的数） */
- (NSString *_Nonnull)kyo_convertFenToCurrencyYuanWithoutSeparateAndDeleteRMBMark; /**< 把当前以分为单位的self转换为人民币格式的字符串（去掉3为数一个逗号的分隔符）并把人民币的的字符删除 */

@end
