//
//  AppDelegate.m
//  JDYFM
//
//  Created by xiaoyang on 2017/1/3.
//  Copyright © 2017年 JDYang. All rights reserved.
//

#import "AppDelegate.h"
#import "JDYTabBarController.h"
#import "JDYTabBar.h"

#import "JDYText.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    
    JDYTabBarController *rootVc = [JDYTabBarController tabBarControllerWithAddChildVCsBlock:^(JDYTabBarController *tabBarVc) {
        
        //发现
        [tabBarVc addChildVC:[JDYText new] normalImageName:@"tabbar_find_n" selectedImageName:@"tabbar_find_h" isRequiredNavController:YES];
        //订阅听
        [tabBarVc addChildVC:[UIViewController new] normalImageName:@"tabbar_sound_n" selectedImageName:@"tabbar_sound_h" isRequiredNavController:YES];
        //下载听
        [tabBarVc addChildVC:[UIViewController new] normalImageName:@"tabbar_download_n" selectedImageName:@"tabbar_download_h" isRequiredNavController:YES];
        //我的
        [tabBarVc addChildVC:[UIViewController new] normalImageName:@"tabbar_me_n" selectedImageName:@"tabbar_me_h" isRequiredNavController:YES];
    }];
    
    JDYTabBar *tabBar = (JDYTabBar *)rootVc.tabBar;
    tabBar.middleClickBlock = ^(BOOL isPlaying){
        if (isPlaying) {
            NSLog(@"播放");
        }else{
            NSLog(@"暂停");
        }
    };
    
    self.window.rootViewController = rootVc;
    [self.window makeKeyAndVisible];
    
    return YES;
}





@end
