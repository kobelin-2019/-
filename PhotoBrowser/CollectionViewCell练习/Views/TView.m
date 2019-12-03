//
//  CalculatorView.m
//  Calculator
//
//  Created by 小哲的DELL on 2018/9/27.
//  Copyright © 2018年 小哲的DELL. All rights reserved.
//

#import "TView.h"
#import "GroupShadowTableView.h"
@interface TView () <GroupShadowTableViewDelegate, GroupShadowTableViewDataSource>
    
@end

@implementation TView


- (instancetype)initWithFrame:(CGRect)frame{
        if(self = [super initWithFrame:frame]){
            self.backgroundColor = [UIColor redColor];
            self.historyTable = [[GroupShadowTableView alloc] initWithFrame:self.frame];
            self.sview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
           // self.array = [[NSMutableArray alloc] init];
            [self addSubview:self.historyTable];
            
        }
        return self;
    
}


//数据源代理方法
 
/**
 *  告诉tableView一共有多少组数据,默认为1组
 */
- (NSInteger)numberOfSectionsInGroupShadowTableView:(GroupShadowTableView *)tableView{
     
    
    return 6;

}
 
/**
 *  告诉tableView第section组有多少行
 */
- (NSInteger)groupShadowTableView:(GroupShadowTableView *)tableView numberOfRowsInSection:(NSInteger)section{
     
    return 1;
}
 
/**
 *  告诉tableView第indexPath行显示怎样的cell
 */
- (UITableViewCell *)groupShadowTableView:(GroupShadowTableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 0.重用标识
    // 被static修饰的局部变量：只会初始化一次，在整个程序运行过程中，只有一份内存
     
    // 1.先根据cell的标识去缓存池中查找可循环利用的cell
      UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellcell"];
     
      
     
    // 2.如果cell为nil（缓存池找不到对应的cell）
     if (!cell) {
             cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cellcell"];
         
         
            
         }
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    imgView.image = [UIImage imageNamed:@"1.jpg"];
    [cell.contentView addSubview:(imgView)];
    
    // 3.覆盖数据
 //   NSString *calText = [self.array objectAtIndex:(indexPath.section)];
   // cell.textLabel.text = [NSString stringWithFormat:@"%@", calText];
//    cell.contentView.backgroundColor = [UIColor whiteColor];
//    cell.textLabel.textColor = [UIColor blackColor];
//
    
    return cell;
}

- (CGFloat)groupShadowTableView:(GroupShadowTableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (void)groupShadowTableView:(GroupShadowTableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}



@end
