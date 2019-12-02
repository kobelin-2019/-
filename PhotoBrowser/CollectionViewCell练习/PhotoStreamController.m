//
//  PhotoStreamController.m
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/12/2.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "PhotoStreamController.h"

@interface PhotoStreamController ()

@end

@implementation PhotoStreamController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *imgArray = [NSArray  arrayWithObjects:@"2.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",nil];
    
     self.cellArray = [imgArray mutableCopy];
    
    self.sview = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    
    [self initPhotoStream];
    
    [self.view addSubview:self.sview];
    
}
int max(int a,int b)
{
    return a>b?a:b;
}
-(void) initPhotoStream
{
    int tot = self.cellArray.count;
    int ww = self.view.frame.size.width/3;
    int x1 = 0;int x2 = ww;int x3 = ww + ww;
    int h1 = 0;int h2 = 0; int h3 = 0;
    for(int i=0;i<tot;i++)
    {
        int j = arc4random() % tot;
          int rand = 30+ arc4random() % 100;
        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(x1,h1 ,ww, rand/1.5)];
        UIImage *img = [UIImage imageNamed:_cellArray[j]];
        imgView.image = img;
        [self.sview addSubview:imgView];
        h1+=rand/1.5;
        
        
         rand = 30+ arc4random() % 100;
        imgView = [[UIImageView alloc] initWithFrame:CGRectMake(x2,h2 ,ww, rand/1.5)];
        img = [UIImage imageNamed:_cellArray[j]];
        imgView.image = img;
        [self.sview addSubview:imgView];
        h2+=rand/1.5;

        
        rand = 30+ arc4random() % 100;
        imgView = [[UIImageView alloc] initWithFrame:CGRectMake(x3,h3 ,ww, rand/1.5)];
        img = [UIImage imageNamed:_cellArray[j]];
        imgView.image = img;
        [self.sview addSubview:imgView];
        h3+=rand/1.5;
    }
    int maxH = h1;maxH = max(maxH,h2);maxH = max(maxH,h3);
    self.sview.contentSize = CGSizeMake(ww*3,maxH);
    self.sview.automaticallyAdjustsScrollIndicatorInsets = YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
