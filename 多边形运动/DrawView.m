//
//  DrawView.m
//  多边形运动
//
//  Created by Burt on 2018/3/6.
//  Copyright © 2018年 com.uqiauto. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        
        self.backgroundColor=[UIColor whiteColor];
        
        _point1=CGPointMake(100, 300);
        _point2=CGPointMake(50, 350);
        _point3=CGPointMake(100, 400);
        _point4=CGPointMake(150, 350);
        
        _timeWeight=0;
    }
    
    return self;
}



- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath * path=[UIBezierPath bezierPath];
    [path moveToPoint:_point1];
    [path addLineToPoint:_point2];
    [path addLineToPoint:_point3];
    [path addLineToPoint:_point4];
    
    [path moveToPoint:_point2];
    [path addLineToPoint:_point4];
    [path addLineToPoint:_point3];
    [path addLineToPoint:_point1];
    
    
    [path moveToPoint:_point3];
    [path addLineToPoint:_point4];
    [path addLineToPoint:_point1];
    
    
    path.lineWidth=1;
    [[UIColor redColor] setStroke];
    [path stroke];
    
}



-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [NSTimer scheduledTimerWithTimeInterval:0.05 repeats:YES block:^(NSTimer * _Nonnull timer) {
        
        _timeWeight+=1;
        _point1=CGPointMake(100,300+50*cos(M_PI/2+M_PI/180*_timeWeight));
        _point2=CGPointMake(100+50*cos(M_PI/2+M_PI/180*_timeWeight), 150);
        _point3=CGPointMake(100-50*cos(M_PI/2+M_PI/180*_timeWeight), 150);
        _point4=CGPointMake(150-50*cos(M_PI/2+M_PI/180*_timeWeight), 350+50*cos(M_PI/2+M_PI/180*_timeWeight));
        
        
        
//        _point1=CGPointMake(100,300+20*cos(M_PI/2+M_PI/180*_timeWeight));
//        _point2=CGPointMake(100+50*cos(M_PI/2+M_PI/180*_timeWeight), 350);
//        _point3=CGPointMake(100-50*cos(M_PI/2+M_PI/180*_timeWeight), 350);
//        _point4=CGPointMake(150-50*cos(M_PI/2+M_PI/180*_timeWeight), 350+50*cos(M_PI/2+M_PI/180*_timeWeight));
        
        
        [self setNeedsDisplay];
        
        
        
    }];
}







@end
