//
//  TableViewCell1.h
//  XIB+LayoutDemoo
//
//  Created by ~~浅笑 on 16/8/11.
//  Copyright © 2016年 广东康爱多连锁药店有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell1 : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblContent;

-(CGFloat)getCellHeightWithModel:(id)model;
-(void)setModel:(id)model;
@end
