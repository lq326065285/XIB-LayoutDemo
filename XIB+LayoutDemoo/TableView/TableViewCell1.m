//
//  TableViewCell1.m
//  XIB+LayoutDemoo
//
//  Created by ~~浅笑 on 16/8/11.
//  Copyright © 2016年 广东康爱多连锁药店有限公司. All rights reserved.
//

#import "TableViewCell1.h"

#import "TestModel.h"

@implementation TableViewCell1

-(void)awakeFromNib{
    self.lblContent.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 20;
}

-(CGFloat)getCellHeightWithModel:(TestModel *)model{
    [self setModel:model];
    CGSize size = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height;
}

-(void)setModel:(TestModel *)model{
    self.lblContent.text = model.title;
}

@end
