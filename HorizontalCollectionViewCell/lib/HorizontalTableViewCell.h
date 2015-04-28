//
//  HorizontalTableViewCell.h
//  GongXy
//
//  Created by GXY on 15/4/27.
//  Copyright (c) 2015年 GongXinYing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PureLayout.h"
#import "HorizontalCollectionViewCell.h"

@interface HorizontalTableViewCell : UITableViewCell <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UIColor *labelBackgroundColor;
@property (nonatomic) CGFloat horizontalSpace;
@property (nonatomic, strong) NSArray *textArray;

- (void)confiSelf;

@end
