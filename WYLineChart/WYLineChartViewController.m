//
//  WYLineChartViewController.m
//  WYLineChart
//
//  Created by wangyue on 16/6/29.
//  Copyright © 2016年 wangyue. All rights reserved.
//

#import "WYLineChartViewController.h"
#import "WYLineChartView.h"

@interface WYLineChartViewController ()

@end 

@implementation WYLineChartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    [self chartViewInit];
}
- (void)chartViewInit
{
    NSMutableArray *marray = [NSMutableArray arrayWithCapacity:10];
    for (int i = 0; i<10; i++) {
        [marray addObject:[NSString stringWithFormat:@"%d",i]];
    }
    NSMutableArray *pointsArray = [NSMutableArray arrayWithCapacity:10];
    for (int i = 0; i<10; i++) {
        [pointsArray addObject:[NSString stringWithFormat:@"%d.%d",arc4random()%5,arc4random()%9]];
    }
    //scrollView开启translucent，view不会下移
    self.navigationController.navigationBar.translucent = NO;
    //WYLineChartView Init
    WYLineChartView *chartView= [[WYLineChartView alloc] initWithFrame:CGRectMake(0, 100, [[UIScreen mainScreen] bounds].size.width, 300)];
    [self.view addSubview:chartView];
    chartView.xNum = _num;
    chartView.XLabels = marray;
    chartView.YLabels = [NSMutableArray arrayWithArray:@[@"0",@"1",@"2",@"3",@"4",@"5"]];
    [chartView strokeChartWithPoints:pointsArray];
    [chartView addHighLineWith:4.8f];
    [chartView addLowLineWith:1.8f];
}
-(void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
