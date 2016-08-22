//
//  TableViewCell3.h
//  XIB+LayoutDemoo
//
//  Created by ~~浅笑 on 16/8/12.
//  Copyright © 2016年 广东康爱多连锁药店有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell3 : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *mySubTitleLabel;

-(void)setModel:(id)model;

-(CGFloat)getCellHeightWithModel:(id)model;

@end
