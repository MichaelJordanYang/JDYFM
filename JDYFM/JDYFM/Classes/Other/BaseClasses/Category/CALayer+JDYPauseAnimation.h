//
//  CALayer+JDYPauseAnimation.h
//  JDYFM
//
//  Created by xiaoyang on 2017/1/4.
//  Copyright © 2017年 JDYang. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface CALayer (JDYPauseAnimation)

///暂停动画
- (void)pauseAnimation;

///恢复动画
- (void)resumeAnimation;

@end
