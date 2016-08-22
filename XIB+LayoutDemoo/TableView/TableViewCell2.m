//
//  TableViewCell2.m
//  XIB+LayoutDemoo
//
//  Created by ~~浅笑 on 16/8/11.
//  Copyright © 2016年 广东康爱多连锁药店有限公司. All rights reserved.
//

#import "TableViewCell2.h"

#import "TestModel.h"

@implementation TableViewCell2

-(void)awakeFromNib{
    self.myTitleLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 56 - 10;
    self.mySubTitleLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 56 - 10;
}

-(CGFloat)getCellHeightWithModel:(TestModel *)model{
    [self setModel:model];
    [self layoutIfNeeded];
    
    
    CGSize size = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height + 1;
}

-(void)setModel:(TestModel *)model{
    self.mySubTitleLabel.text = model.subTitle;
    self.myTitleLabel.text = model.title;
}

@end
