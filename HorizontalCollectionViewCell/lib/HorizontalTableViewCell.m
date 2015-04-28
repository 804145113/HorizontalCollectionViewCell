//
//  HorizontalTableViewCell.m
//  GongXy
//
//  Created by GXY on 15/4/27.
//  Copyright (c) 2015年 GongXinYing. All rights reserved.
//

#import "HorizontalTableViewCell.h"

@implementation HorizontalTableViewCell {
    UICollectionView *myCollectionView;
}

- (void)confiSelf {
    if (myCollectionView !=nil) {
        [myCollectionView reloadData];
        return;
    }
    UICollectionViewFlowLayout *flowLayout= [[UICollectionViewFlowLayout alloc]init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.minimumLineSpacing = _horizontalSpace;
    flowLayout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0);
    myCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    
    myCollectionView.delegate = self;
    myCollectionView.dataSource = self;
    myCollectionView.showsHorizontalScrollIndicator = NO;
    myCollectionView.backgroundColor = [UIColor clearColor];
    
    [myCollectionView registerClass:[HorizontalCollectionViewCell class] forCellWithReuseIdentifier:@"gxyCell"];
    
    [self.contentView addSubview:myCollectionView];
    
    [myCollectionView autoPinEdge:ALEdgeLeading toEdge:ALEdgeLeading ofView:myCollectionView.superview withOffset:10.f];
    [myCollectionView autoPinEdge:ALEdgeTop toEdge:ALEdgeTop ofView:myCollectionView.superview withOffset:0.f];
    [myCollectionView autoPinEdge:ALEdgeTrailing toEdge:ALEdgeTrailing ofView:myCollectionView.superview withOffset:0.f];
    [myCollectionView autoSetDimension:ALDimensionHeight toSize:50.f];
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    UILabel *label = [[UILabel alloc] init];
    label.text = [_textArray objectAtIndex:indexPath.row];
    label.font = [UIFont systemFontOfSize:TITLEFONTSIZE];
    CGSize size = [label sizeThatFits:CGSizeMake(1000,50)];
    CGFloat width = size.width + 10;
    CGFloat averageWidth = ([[UIScreen mainScreen] applicationFrame].size.width - ((_textArray.count) + 1) * _horizontalSpace) / _textArray.count;
    if (width < averageWidth) {
        width = averageWidth;
    }
    return CGSizeMake(width, 50);
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _textArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    HorizontalCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"gxyCell" forIndexPath:indexPath];
    NSString *title = [_textArray objectAtIndex:indexPath.row];
    [cell configHorizontalCollectionViewCell:title WithColor:_labelBackgroundColor];
    return cell;
}

@end
