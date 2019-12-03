//
//  ViewController.m
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/11/29.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "ViewController.h"
#import "myCollectionViewCell.h"
#define fDeviceWidth ([UIScreen mainScreen].bounds.size.width)
#define fDeviceHeight ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()
@property NSTimer *t;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *imgArray = [NSArray  arrayWithObjects:@"2.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",@"3.jpg",@"4.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"5.jpg",@"6.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",@"6.jpg",nil];
    
     self.cellArray = [imgArray mutableCopy];
    [self.view addSubview:self.mycollectionView];
    
    self.sview = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    NSInteger count = imgArray.count;
    int totWidth = 0;
    for(int i=0;i<count;i++)
    {
       UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(totWidth, 0, self.view.frame.size.width, self.view.frame.size.height)];
        UIImage *img = [UIImage imageNamed:_cellArray[i]];
        imgView.image = img;
        totWidth += self.view.frame.size.width;
        imgView.contentMode = UIViewContentModeScaleAspectFit;
        [self.sview addSubview:imgView];
    }
    self.sview.contentSize = CGSizeMake(totWidth,self.view.frame.size.height);
    self.sview.automaticallyAdjustsScrollIndicatorInsets = YES;
    self.sview.pagingEnabled = YES;
    
    
    self.returnHome = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width-60, 90, 60, 30)];
    self.returnHome.backgroundColor = [UIColor whiteColor];
    [self.returnHome setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.returnHome setTitle:@"返回" forState:UIControlStateNormal];
    [self.returnHome addTarget:self action:@selector(goHome) forControlEvents:UIControlEventTouchUpInside];

    
    self.autoPlay = [[UIButton alloc] initWithFrame:CGRectMake(10, 90, 100, 30)];
    self.autoPlay.backgroundColor = [UIColor whiteColor];
    [self.autoPlay setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.autoPlay setTitle:@"自动播放" forState:UIControlStateNormal];
    [self.autoPlay addTarget:self action:@selector(playPhoto) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.sview.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.sview];
    
    [self.view addSubview:self.returnHome];
    [self.view addSubview:self.autoPlay];
    self.sview.hidden = YES;
    self.returnHome.hidden = YES;
    self.autoPlay.hidden = YES;

}

#pragma mark about CollectionView
-(UICollectionView *)mycollectionView
{
    if(_mycollectionView == nil)
    {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc]init];
        
        _mycollectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, fDeviceWidth, fDeviceHeight) collectionViewLayout:flowLayout];
        
        //定义每个UICollectionView 的大小
               flowLayout.itemSize = CGSizeMake((fDeviceWidth-20)/2-30, (fDeviceWidth-20)/2-30);
               //定义每个UICollectionViewcell 横向的间距
               flowLayout.minimumLineSpacing = 20;
               //定义每个UICollectionViewcell 纵向的间距
               flowLayout.minimumInteritemSpacing = 0;
               //定义每个UICollectionViewcell 的边距距
               flowLayout.sectionInset = UIEdgeInsetsMake(40, 30, 10, 35);//上左下右
        
        [_mycollectionView registerClass:[myCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
        [_mycollectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ReusableView"];
        
        _mycollectionView.delegate = self;
        _mycollectionView.dataSource = self;
        _mycollectionView.backgroundColor = [UIColor whiteColor];
       
        
    }
    return _mycollectionView;

}


#pragma mark - UICollectionView delegate dataSource
#pragma mark 定义展示的UICollectionViewCell的个数/Users/kobelin/Desktop/PhotoBrowser/CollectionViewCell练习/ViewController.h
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [_cellArray count];
}

#pragma mark 定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

#pragma mark 每个UICollectionViewCell展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"cell";
    myCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identify forIndexPath:indexPath];
    [cell sizeToFit];

    cell.imgview.image = [UIImage imageNamed:_cellArray[indexPath.item]];
    cell.text.text = [NSString stringWithFormat:@"图片%ld",indexPath.item];
    return cell;
}

#pragma mark 头部显示的内容
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    UICollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:
                                               UICollectionElementKindSectionHeader withReuseIdentifier:@"ReusableView" forIndexPath:indexPath];
       
       return headerView;
}

#pragma mark UICollectionViewCell被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    self.sview.contentOffset = CGPointMake((indexPath.item)*(self.view.frame.size.width) ,0);
    self.mycollectionView.hidden = YES;
    self.returnHome.hidden = NO;
    self.autoPlay.hidden = NO;
    self.sview.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)goHome
{
    [self deleteTimer];
    self.sview.hidden = YES;
    self.returnHome.hidden = YES;
    self.mycollectionView.hidden = NO;
    self.autoPlay.hidden = YES;
}
-(void) playPhoto
{
    self.t = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updatePhoto) userInfo:nil repeats:YES];
}

-(void)updatePhoto
{
    [UIView animateWithDuration:0.5 animations:^{
    CGPoint pos =
    self.sview.contentOffset;
    int ww = [UIScreen mainScreen].bounds.size.width;
    int n = pos.x/ww;
    int nxt = 0;
    if(n == self.cellArray.count-1)
    {
        nxt = 0;
    }
    else {
        nxt = n+1;
    }
    CGPoint nxtpos = CGPointMake(nxt*ww, 0);
    self.sview.contentOffset = nxtpos;
    }
     ];
}
-(void)deleteTimer
{
    [self.t invalidate];
    self.t = nil;
}

@end    












