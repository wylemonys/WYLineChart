//
//  ViewController.m
//  WYLineChart
//
//  Created by wangyue on 16/6/29.
//  Copyright © 2016年 wangyue. All rights reserved.
//

#import "ViewController.h"
#import "WYLineChartViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)lineChartButton:(id)sender {
    WYLineChartViewController *lineChart = [[WYLineChartViewController alloc] init];
    lineChart.num = 0;
    [self.navigationController pushViewController:lineChart animated:YES];
}
- (IBAction)scrollLineChartButton:(id)sender {
    WYLineChartViewController *lineChart = [[WYLineChartViewController alloc] init];
    lineChart.num = 7;
    [self.navigationController pushViewController:lineChart animated:YES];
}

@end
