//
//  JDYText.m
//  JDYFM
//
//  Created by xiaoyang on 2017/1/6.
//  Copyright © 2017年 JDYang. All rights reserved.
//

#import "JDYText.h"

#import "JDYtext2.h"

@interface JDYText ()

@end

@implementation JDYText

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    static BOOL isPlay = NO;
    isPlay = !isPlay;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"playState" object:@(isPlay)];
    UIImage *image = [UIImage imageNamed:@"zxy_icon"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"playImage" object:image];
    
    [self.navigationController pushViewController:[JDYtext2 new] animated:YES];
}
@end
