//
//  ViewController.m
//  XIB+LayoutDemoo
//
//  Created by ~~浅笑 on 16/8/11.
//  Copyright © 2016年 广东康爱多连锁药店有限公司. All rights reserved.
//

#import "ViewController.h"

#import "TableViewCell1.h"

#import "TableViewCell2.h"

#import "TableViewCell3.h"

#import "TestModel.h"

#import "UITableView+FDTemplateLayoutCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


#define CELL_NAME1 @"cell_name1"
#define CELL_NAME2 @"cell_name2"
#define CELL_NAME3 @"cell_name3"

@property (nonnull,nonatomic,strong) UITableView * tableView;

@property (nonnull,nonatomic,strong) NSMutableArray * dataArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        TableViewCell1 * cell = [tableView dequeueReusableCellWithIdentifier:CELL_NAME1];
        [cell setModel:self.dataArr[indexPath.row]];
        return cell;
    }else if(indexPath.row == 1){
        TableViewCell2 * cell = [tableView dequeueReusableCellWithIdentifier:CELL_NAME2];
        [cell setModel:self.dataArr[indexPath.row]];
        return cell;
    }
    TableViewCell3 * cell = [tableView dequeueReusableCellWithIdentifier:CELL_NAME3];
    [cell setModel:self.dataArr[indexPath.row]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        TableViewCell1 * cell1 = [tableView dequeueReusableCellWithIdentifier:CELL_NAME1];
        return [cell1 getCellHeightWithModel:self.dataArr[indexPath.row]];
    }else if (indexPath.row == 1){
        TableViewCell2 * cell2 = [tableView dequeueReusableCellWithIdentifier:CELL_NAME2];
        return [cell2 getCellHeightWithModel:self.dataArr[indexPath.row]];
    }
    return [tableView fd_heightForCellWithIdentifier:CELL_NAME3 configuration:^(TableViewCell3 * cell) {
        [cell setModel:self.dataArr[indexPath.row]];
    }];
    
    //如果有两个label上下，直接用self(sel）
//    TableViewCell3 * cell3 = [tableView dequeueReusableCellWithIdentifier:CELL_NAME3];
//    return [cell3 getCellHeightWithModel:self.dataArr[indexPath.row]];
    
}


#pragma mark - get or set

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerNib:[UINib nibWithNibName:@"TableViewCell1" bundle:nil] forCellReuseIdentifier:CELL_NAME1];
        [_tableView registerNib:[UINib nibWithNibName:@"TableViewCell2" bundle:nil]forCellReuseIdentifier:CELL_NAME2];
        [_tableView registerNib:[UINib nibWithNibName:@"TableViewCell3" bundle:nil] forCellReuseIdentifier:CELL_NAME3];
    }
    return _tableView;
}

-(NSMutableArray *)dataArr{
    if (!_dataArr) {
        _dataArr = [[NSMutableArray alloc] init];
        TestModel * model1 = [[TestModel alloc] init];
        model1.title = @"广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区广州市天河区";
        [_dataArr addObject:model1];
        
        TestModel * model2 = [[TestModel alloc] init];
        model2.title = @"奥运会中国乒乓球的对决";
        model2.subTitle = @"4-0！马龙完胜张继科首夺奥运冠军三局得分不过5！ 张继科与马龙差距真有那么大？奥运马龙男单夺冠手比心形庆祝 张继科拥抱送祝福\
        马龙十年一剑终成大满贯 属于他的时代真的来了\
        马龙这战后实现史无前例壮举 他远胜刘国梁张继科\
        大满贯后是张继科最难4年 没有金牌他仍是胜利者\
        马龙很平静：超水平发挥 奥运冠军比大满贯更开心\
        张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他张继科坦然接受失利：马龙实力强 祝贺他";
        [_dataArr addObject:model2];
        
        TestModel * model3 = [[TestModel alloc] init];
        model3.title = @"赛场，中国名将的女子激光雷迪尔单人艇比赛第二轮，遭遇投诉被取消成绩，除了委屈的泪水、宽容的祝福，中国选手还选择了后来居上。赛场，中国名将的女子激光雷迪尔单人艇比赛第二轮，遭遇投诉被取消成绩，除了委屈的泪水、宽容的祝福，中国选手还选择了后来居上赛场，中国名将的女子激光雷迪尔单人艇比赛第二轮，遭遇投诉被取消成绩，除了委屈的泪水、宽容的祝福，中国选手还选择了后来居上赛场，中国名将的女子激光雷迪尔单人艇比赛第二轮，遭遇投诉被取消成绩，除了委屈的泪水、宽容的祝福，中国选手还选择了后来居上赛场，中国名将的女子激光雷迪尔单人艇比赛第二轮，遭遇投诉被取消成绩，除了委屈的泪水、宽容的祝福，中国选手还选择了后来居上";
        model3.subTitle = @"奥运战报奥运战报奥运战报奥运战报奥运战报";
        [_dataArr addObject:model3];
    }
    return _dataArr;
}

@end
