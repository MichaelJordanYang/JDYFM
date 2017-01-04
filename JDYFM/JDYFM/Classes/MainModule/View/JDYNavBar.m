//
//  JDYNavBar.m
//  JDYFM
//
//  Created by xiaoyang on 2017/1/3.
//  Copyright © 2017年 JDYang. All rights reserved.
//

#import "JDYNavBar.h"

@implementation JDYNavBar

/**
 *  设置全局的导航栏背景图片
 *
 *  @param globalImg 全局导航栏背景图片
 */
+ (void)setGlobalBackGroundImage:(UIImage *)globalImg
{
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:NSClassFromString(@"JDYTabBarController"), nil];
    [navBar setBackgroundImage:globalImg forBarMetrics:UIBarMetricsDefault];
}

/**
 *  设置全局导航栏标题颜色
 *
 *  @param globalTextColor 全局导航栏标题颜色
 */
+ (void)setGlobalTextColor:(UIColor *)globalTextColor andFontSize:(CGFloat)fontSize
{
    if (globalTextColor == nil) {
        return;
    }
    if (fontSize < 6 || fontSize > 40) {
        fontSize = 16;
    }
    
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedIn:NSClassFromString(@"JDYTabBarController"), nil];
    
    //设置导航栏颜色
    NSDictionary *titleDic = @{
                               NSForegroundColorAttributeName: globalTextColor,
                               NSFontAttributeName: [UIFont systemFontOfSize:fontSize]
                               };
    
    [navBar setTitleTextAttributes:titleDic];
    
}

@end
