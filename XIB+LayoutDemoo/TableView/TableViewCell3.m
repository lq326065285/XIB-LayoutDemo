//
//  TableViewCell3.m
//  XIB+LayoutDemoo
//
//  Created by ~~浅笑 on 16/8/12.
//  Copyright © 2016年 广东康爱多连锁药店有限公司. All rights reserved.
//

#import "TableViewCell3.h"

#import "TestModel.h"

@implementation TableViewCell3

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code 
    self.contentLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 20;
    self.mySubTitleLabel.preferredMaxLayoutWidth = 183;
}

-(void)setModel:(TestModel *)model{
    self.contentLabel.text = model.title;
    self.mySubTitleLabel.text = model.subTitle;
}


-(CGFloat)getCellHeightWithModel:(TestModel *)model{
    [self setModel:model];
    [self layoutIfNeeded];
/*  
 *1，如果有两个label上下，直接用self(cell）调用systemLayoutSizeFittingSize就会出现一堆约束问题，
 *         此时我们只需要把UILayoutFittingCompressedSize --> UILayoutFittingExpandedSize就行了
 *
 *  2，如果用self.contentView调用systemLayoutSizeFittingSize就需要+0.5,因为cell总是比cell.contentView大0.5
 */
    CGSize size = [self systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    return size.height;
}

@end
