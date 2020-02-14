//
//  WYLineChartView.h
//  WYLineChart
//
//  Created by wangyue on 16/6/29.
//  Copyright © 2016年 wangyue. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WYLineChartView : UIView
/**
 * X轴每屏展示的个数，默认为展示全部刻度
 */
@property (nonatomic, assign)NSInteger xNum;
/**
 * X坐标轴刻度数组，先设置X坐标后设置Y先后顺序影响数据展示
 */
@property (nonatomic, strong) NSMutableArray *XLabels;
/**
 * Y坐标轴刻度数组，先设置X坐标后设置Y先后顺序影响数据展示
 */
@property (nonatomic, strong) NSMutableArray *YLabels;
/**
 * 设置描点方法展示数据
 * pointsArray:需要描点的数值数组
 */
- (void)strokeChartWithPoints:(NSMutableArray *)pointsArray;
/**
 * 显示最高限制线
 */
- (void)addHighLineWith:(CGFloat )value;
/**
 * 显示最低限制线
 */
- (void)addLowLineWith:(CGFloat )value;

@end
