//
//  HorizontalCollectionViewCell.m
//  GongXy
//
//  Created by GXY on 15/4/27.
//  Copyright (c) 2015年 GongXinYing. All rights reserved.
//

#import "HorizontalCollectionViewCell.h"

@implementation HorizontalCollectionViewCell {
    UILabel *label;
}

- (void)configHorizontalCollectionViewCell:(NSString *)title WithColor:(UIColor *)color {
    self.backgroundColor = [UIColor whiteColor];
    if (label == nil) {
        label = [[UILabel alloc] init];
        [self addSubview:label];
    }
    label.textColor = [UIColor whiteColor];
    if (color == nil) {
        color = [UIColor orangeColor];
    }
    label.backgroundColor = color;
    label.text = title;
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:TITLEFONTSIZE];
    label.layer.masksToBounds = YES;
    label.layer.cornerRadius = 5.f;
    
    [label autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(10, 0, 10, 0)];
}

@end
