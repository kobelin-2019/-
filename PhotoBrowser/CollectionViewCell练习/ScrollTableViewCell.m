//
//  ScrollTableViewCell.m
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/12/2.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "ScrollTableViewCell.h"

@implementation ScrollTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
   self = [super init];
    // Do any additional setup after loading the view.
    if(self)
    {
    NSArray *imgArray = [NSArray  arrayWithObjects:@"2.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",nil];
    
     self.cellArray = [imgArray mutableCopy];
        
        self.sview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 150*imgArray.count, 100)];
        
        
    
    }
    return self;
}
@end
