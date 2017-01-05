//
//  ViewController.m
//  CornerImage
//
//  Created by lixun on 2017/1/4.
//  Copyright © 2017年 sunshine. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+LXCornerRadius.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.rowHeight = 50;

}

- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
        for (NSInteger i = 0; i < 5; i ++) {
            UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((40 + 5) * i, 0, 40, 40)];
            imageView.image = [UIImage imageNamed:@"placeholder"];
            [imageView lx_cornerRadius:20];
            [cell.contentView addSubview:imageView];
        }
    
    return cell;
}


@end
