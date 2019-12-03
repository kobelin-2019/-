//
//  CalculatorView.h
//  Calculator
//
//  Created by 小哲的DELL on 2018/9/27.
//  Copyright © 2018年 小哲的DELL. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroupShadowTableView.h"
@interface TView : UIView
@property(nonatomic, strong) GroupShadowTableView *historyTable;
@property UIScrollView *sview;
@end
