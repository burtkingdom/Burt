//
//  DrawView.h
//  多边形运动
//
//  Created by Burt on 2018/3/6.
//  Copyright © 2018年 com.uqiauto. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DrawView : UIView
@property(nonatomic,assign)CGPoint point1;
@property(nonatomic,assign)CGPoint point2;
@property(nonatomic,assign)CGPoint point3;
@property(nonatomic,assign)CGPoint point4;
@property(nonatomic,assign)NSInteger timeWeight;
@end
