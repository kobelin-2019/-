//
//  HomeController.h
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/12/2.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "PhotoStreamController.h"
#import "ScrollTableViewController.h"
#import "CardViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface HomeController : UIViewController
@property UIButton *btn1;
@property UIButton *btn2;
@property UIButton *btn3;
@property UIButton *btn4;
@property PhotoStreamController *VC1;
@property ViewController *VC2;
@property ScrollTableViewController *VC3;
@property CardViewController *VC4;
@end

NS_ASSUME_NONNULL_END
