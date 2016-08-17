//
//  FirstView.m
//  QuartzExercise
//
//  Created by Marike Jave on 16/8/1.
//  Copyright © 2016年 Jiu Bu Gao Su Ni. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView


- (void)drawRect:(CGRect)rect{
    //1. 绘制虚线
//    CGContextRef context =UIGraphicsGetCurrentContext();
//    CGContextBeginPath(context);
//    CGContextSetLineWidth(context, 5.0);
//    CGContextSetStrokeColorWithColor(context, [UIColor cyanColor].CGColor);
//    CGFloat lengths[] = {10,5};
//    CGContextSetLineDash(context, 0, lengths,2);
//    CGContextMoveToPoint(context, 10.0, 20.0);
//    CGContextAddLineToPoint(context, 310.0,20.0);
//    CGContextStrokePath(context);
//    CGContextClosePath(context);
    
    CGContextRef ctx =  UIGraphicsGetCurrentContext();
    
    // 2. 绘制平行四边形【三角形同理】
    // 设置起点
    CGContextMoveToPoint(ctx, 50, 10);
    // 设置第二个点
    CGContextAddLineToPoint(ctx, 0, 100);
    // 设置第三个点
    CGContextAddLineToPoint(ctx, 100, 100);
    // 设置终点
    CGContextAddLineToPoint(ctx, 150, 10);
    // 关闭起点和终点
    CGContextClosePath(ctx);
    // 3.渲染图形到layer上
    CGContextStrokePath(ctx);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
