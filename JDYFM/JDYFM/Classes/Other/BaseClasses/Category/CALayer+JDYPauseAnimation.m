//
//  CALayer+JDYPauseAnimation.m
//  JDYFM
//
//  Created by xiaoyang on 2017/1/4.
//  Copyright © 2017年 JDYang. All rights reserved.
//

#import "CALayer+JDYPauseAnimation.h"

@implementation CALayer (JDYPauseAnimation)

///暂停动画
- (void)pauseAnimation{
    CFTimeInterval pausedTime = [self convertTime:CACurrentMediaTime() fromLayer:nil];

    self.speed = 0.0;
    self.timeOffset = pausedTime;
}

///恢复动画
- (void)resumeAnimation{
    CFTimeInterval pausedTime = [self timeOffset];
    self.speed = 1.0;
    self.timeOffset = 0.0;
    self.beginTime = 0.0;
    CFTimeInterval timeSincePause = [self convertTime:CACurrentMediaTime() fromLayer:nil] - pausedTime;
    self.beginTime = timeSincePause;
}
@end
