//
//  OCUtils.m
//  BarrageForSwift
//
//  Created by allthings_LuYD on 16/8/5.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import "OCUtils.h"

@implementation OCUtils
+ (NSStringDrawingOptions)stringDrawingOptions{
    return NSStringDrawingTruncatesLastVisibleLine |
    NSStringDrawingUsesLineFragmentOrigin |
    NSStringDrawingUsesFontLeading;
}
+ (NSDictionary *)attributeWithSelf:(UILabel *)label{
    return @{NSFontAttributeName: label.font};
}
@end
