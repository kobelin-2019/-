//
//  ScrollTableViewController.h
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/12/2.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScrollTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
