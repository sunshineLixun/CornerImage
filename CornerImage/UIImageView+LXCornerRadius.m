//
//  UIImageView+LXCornerRadius.m
//  CornerImage
//
//  Created by lixun on 2017/1/5.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import "UIImageView+LXCornerRadius.h"
#import "UIImage+CornerRadiusExtension.h"

@implementation UIImageView (LXCornerRadius)

- (void)lx_cornerRadius:(CGFloat)radius{
    self.image = [self.image imageAddCornerWithRadius:radius andSize:self.bounds.size];
}

@end
