//
//  JDYMiddleView.h
//  JDYFM
//
//  Created by xiaoyang on 2017/1/4.
//  Copyright © 2017年 JDYang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JDYMiddleView : UIView

+ (instancetype)shareInstance;

/**
 快速创建中间视图
 
 @return 中间的视图
 */
+ (instancetype)middleView;

/**
 控制是否正在播放
 */
@property (nonatomic, assign) BOOL isPlaying;

///中间图片
@property (nonatomic, strong) UIImage *middleImage;

///点击中间按钮的执行代码块
@property (nonatomic, copy) void(^middleClickBlock)(BOOL isPlaying);

@end
