//
//  PhotoStreamController.h
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/12/2.
//  Copyright © 2019 kobelin. All rights reserved.
//
//瀑布流照片显示，采用UIScrollView
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PhotoStreamController : UIViewController
@property NSMutableArray *cellArray;
@property UIScrollView *sview;

@end

NS_ASSUME_NONNULL_END
