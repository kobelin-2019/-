//
//  HomeController.m
//  CollectionViewCell练习
//
//  Created by kobelin on 2019/12/2.
//  Copyright © 2019 kobelin. All rights reserved.
//

#import "HomeController.h"
#import "ViewController.h"
#import "PhotoStreamController.h"
#import "ScrollTableViewController.h"
#import "CardViewController.h"
#define MM [UIScreen mainScreen].bounds.size.width
#define HH [UIScreen mainScreen].bounds.size.height
@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.VC1 = [[PhotoStreamController alloc] init];
    self.VC2 = [[ViewController alloc]init];
    self.VC3 = [[ScrollTableViewController alloc] init];
    self.VC4 = [[CardViewController alloc] init];
    [self.VC4 viewDidLoad];
    [self.view setBackgroundColor:[UIColor yellowColor]];
    self.btn1 = [[UIButton alloc] initWithFrame:CGRectMake((MM/2)-80,(HH/2-15)-120-50,160,30)];
    self.btn2 = [[UIButton alloc] initWithFrame:CGRectMake((MM/2)-80,(HH/2-15)-50,160,30)];
    self.btn3 = [[UIButton alloc] initWithFrame:CGRectMake((MM/2)-80,(HH/2-15)+120-50,160,30)];
    self.btn4 = [[UIButton alloc] initWithFrame:CGRectMake((MM/2)-80,(HH/2-15)+120+70,160,30)];
    [self.btn1 setTitle:@"瀑布流" forState:UIControlStateNormal];
    [self.btn2 setTitle:@"Table+Scroll" forState:UIControlStateNormal];
    [self.btn3 setTitle:@"Table嵌套Scroll" forState:UIControlStateNormal];
    [self.btn4 setTitle:@"卡片效果" forState:UIControlStateNormal];
    [self.view addSubview:self.btn1];
    [self.view addSubview:self.btn2];
    [self.view addSubview:self.btn3];
    [self.view addSubview:self.btn4];
    [self.btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.btn1 setBackgroundColor:[UIColor whiteColor]];
    [self.btn2 setBackgroundColor:[UIColor whiteColor]];
    [self.btn3 setBackgroundColor:[UIColor whiteColor]];
    [self.btn4 setBackgroundColor:[UIColor whiteColor]];
    
    [self.btn1 addTarget:self action:@selector(goVC1) forControlEvents:UIControlEventTouchUpInside];
    [self.btn2 addTarget:self action:@selector(goVC2) forControlEvents:UIControlEventTouchUpInside];
    [self.btn3 addTarget:self action:@selector(goVC3) forControlEvents:UIControlEventTouchUpInside];
    [self.btn4 addTarget:self action:@selector(goVC4) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)goVC1
{
    [self.navigationController pushViewController:_VC1 animated:YES];
}

-(void)goVC2
{
    [self.navigationController pushViewController:_VC2 animated:YES];
}
-(void)goVC3
{
    [self.navigationController pushViewController:_VC3 animated:YES];
}
-(void)goVC4
{
    [self.navigationController pushViewController:_VC4 animated:YES];
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
