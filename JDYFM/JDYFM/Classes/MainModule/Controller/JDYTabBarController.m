//
//  JDYTabBarController.m
//  JDYFM
//
//  Created by xiaoyang on 2017/1/3.
//  Copyright © 2017年 JDYang. All rights reserved.
//

#import "JDYTabBarController.h"
#import "JDYTabBar.h"
#import "JDYNavigationController.h"
#import "UIImage+JDYImage.h"


@interface JDYTabBarController ()

@end

@implementation JDYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setUpTabBar];
}


/**
 获取单例对象
 
 @return TabBarController
 */
+ (instancetype)shareInstance{
    static JDYTabBarController *tabBarVc;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tabBarVc = [[JDYTabBarController alloc] init];
    });
    return tabBarVc;
}


/**
 添加子控制器的block
 
 @param addVCBlock 添加代码块
 
 @return TabBarController
 */
+ (instancetype)tabBarControllerWithAddChildVCsBlock: (void(^)(JDYTabBarController *tabBarVc))addVCBlock{
    JDYTabBarController *tabBarVc = [[JDYTabBarController alloc] init];
    
    if (addVCBlock) {
        addVCBlock(tabBarVc);
    }
    return tabBarVc;
}

/**
 添加子控制器
 
 @param vc                子控制器
 @param normalImageName   普通状态下图片
 @param selectedImageName 选中图片
 @param isRequired        是否需要包装导航控制器
 */
- (void)addChildVC: (UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName: (NSString *)selectedImageName isRequiredNavController: (BOOL)isRequired{
    
}


- (void)setUpTabBar{
    [self setValue:[[JDYTabBar alloc] init] forKey:@"tabBar"];
}

@end
