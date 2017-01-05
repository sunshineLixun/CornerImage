//
//  UIView+CornerRadius.m
//  CornerImage
//
//  Created by lixun on 2017/1/4.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import "UIView+CornerRadius.h"

@implementation UIView (CornerRadius)


- (void)cornerImageWith:(CGSize )size color:(UIColor *)color{
    
    UIGraphicsBeginImageContextWithOptions(size, YES, 0);
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    [color setFill];
    
    UIRectFill(rect);
    
    //椭圆
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    
    [path addClip];
    
    [self drawInRect:rect];
    
}

@end
