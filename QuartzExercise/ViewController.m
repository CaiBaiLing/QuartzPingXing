//
//  ViewController.m
//  QuartzExercise
//
//  Created by Marike Jave on 16/8/1.
//  Copyright © 2016年 Jiu Bu Gao Su Ni. All rights reserved.
//

#import "ViewController.h"
#import "FirstView.h"

@interface ViewController ()
{
    FirstView *fView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    fView = [[FirstView alloc] initWithFrame:CGRectMake(100, 100, 150, 110)];
    fView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:fView];
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSSet *allTouches = [event allTouches];
    UITouch *touch = [allTouches anyObject];
    
    UIView *vvv = [touch view];
    
    if ([vvv isEqual:fView]) {//目标View
        
        CGPoint point = [touch locationInView:vvv];
        CGPoint preP = [touch previousLocationInView:vvv];
        
        CGFloat offsetX = point.x - preP.x;
        CGFloat offsetY = point.y - preP.y;
        
        vvv.transform = CGAffineTransformTranslate(vvv.transform, offsetX, offsetY);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
