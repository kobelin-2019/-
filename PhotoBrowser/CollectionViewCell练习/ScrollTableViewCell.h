//
//  ScrollTableViewCell.h
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/12/2.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScrollTableViewCell : UITableViewCell
@property NSMutableArray *cellArray;
@property UIScrollView *sview;
@end

NS_ASSUME_NONNULL_END
