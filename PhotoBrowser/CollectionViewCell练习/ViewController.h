//
//  ViewController.h
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/11/29.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate>

@property NSMutableArray *cellArray;

@property (nonatomic, strong) UICollectionView *mycollectionView;

@property UIScrollView *sview;

@property UIButton *returnHome;

@property UIButton *autoPlay;

@end

