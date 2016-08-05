//
//  SSLabel.m
//  BarrageForOC
//
//  Created by allthings_LuYD on 16/8/5.
//  Copyright © 2016年 scrum_snail. All rights reserved.
//

#import "SSLabel.h"
#define SSLableHeight 50
#define SSDuration 5
#define SSWidth [UIScreen mainScreen].bounds.size.width
#define SSHeight [UIScreen mainScreen].bounds.size.height
@implementation SSLabel

- (void)showInView:(UIView *)view withContent:(NSString *)content{
    self.frame = CGRectMake(SSWidth, arc4random_uniform((int)(SSHeight-100)), [self boundingRectWithContent:content], SSLableHeight);
    self.text = content;
    [view addSubview:self];
    [UIView animateWithDuration:SSDuration delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
        CGRect rect = self.frame;
        rect.origin.x = -self.frame.size.width;
        self.frame = rect;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}


- (CGFloat)boundingRectWithContent:(NSString *)content
{
    NSDictionary *attribute = @{NSFontAttributeName: self.font};

    CGSize retSize = [content boundingRectWithSize:CGSizeMake(MAXFLOAT, SSLableHeight)
                                          options:\
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                       attributes:attribute
                                          context:nil].size;

    return retSize.width;
}

@end
