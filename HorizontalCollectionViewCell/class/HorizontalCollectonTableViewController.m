//
//  HorizontalCollectonTableViewController.m
//  HorizontalCollectionViewCell
//
//  Created by 唐先海 on 15/4/28.
//  Copyright (c) 2015年 唐先海. All rights reserved.
//

#import "HorizontalCollectonTableViewController.h"

@implementation HorizontalCollectonTableViewController {
    NSArray *dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 测试表格数据
    dataArray = @[
                  @[@"吴启凡1",@"2010114029",@"23",@"北京外国语大学",@"本科"],
                  @[@"吴启凡2",@"2010114029",@"23",@"中国政法大学",@"本科"],
                  @[@"吴启凡3",@"2010114029",@"23",@"对外经济贸易大学",@"本科"],
                  @[@"吴启凡4",@"2010114029",@"23",@"北京中医药大学",@"本科"],
                  @[@"吴启凡5",@"2010114029",@"23",@"北京航空航天大学",@"本科"],
                  @[@"吴启凡6",@"2010114029",@"23",@"北京理工大学",@"本科"],
                  @[@"吴启凡7",@"2010114029",@"23",@"北京外国语大学",@"本科"],
                  @[@"吴启凡8",@"2010114029",@"23",@"北京工商大学",@"本科"],
                  @[@"吴启凡9",@"2010114029",@"23",@"北京信息科技大学",@"本科"],
                  @[@"吴启凡10",@"2010114029",@"23",@"中央美术学院",@"本科"],
                  @[@"吴启凡11",@"2010114029",@"23",@"北京外国语大学",@"本科"],
                  @[@"吴启凡12",@"2010114029",@"23",@"北京电子科技学院",@"本科"],
                  @[@"吴启凡13",@"2010114029",@"23",@"中国青年政治学院",@"本科"],
                  @[@"吴启凡14",@"2010114029",@"23",@"北京石油化工学院",@"本科"],
                  @[@"吴启凡15",@"2010114029",@"23",@"北京第二外国语学院",@"本科"],
                  @[@"吴启凡16",@"2010114029",@"23",@"北京外国语大学",@"本科"],
                  @[@"吴启凡17",@"2010114029",@"23",@"北京外国语大学",@"本科"],
                  @[@"吴启凡18",@"2010114029",@"23",@"北京外国语大学",@"本科"],
                  @[@"吴启凡19",@"2010114029",@"23",@"北京外国语大学",@"本科"],
                  ];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return dataArray.count + 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        HorizontalTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"horizontalcellheadIdentifier" forIndexPath:indexPath];
        cell.labelBackgroundColor = [UIColor grayColor];
        cell.textArray = @[@"姓名",@"学号",@"年龄",@"毕业学校",@"学历"];
        [cell confiSelf];
        return cell;
    }
    HorizontalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"horizontalcellIdentifier" forIndexPath:indexPath];
    cell.textArray = dataArray[indexPath.row -1];
    cell.labelBackgroundColor = [UIColor orangeColor];
    [cell confiSelf];
    return cell;
}

@end
