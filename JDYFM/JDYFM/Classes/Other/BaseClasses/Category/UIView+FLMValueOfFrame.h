//
//  UIView+FLMValueOfFrame.h
//  FLMSuperS
//
//  Created by xiaoyang on 16/9/6.
//  Copyright © 2016年 FaLaoMiaoNetworkTechnologyCo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FLMValueOfFrame)
@property (nonatomic) CGFloat left;

@property (nonatomic) CGFloat top;

@property (nonatomic) CGFloat right;

@property (nonatomic) CGFloat bottom;

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
- (void)removeAllSubviews;
@end
