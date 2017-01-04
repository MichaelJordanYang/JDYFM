//
//  UIImage+JDYImage.m
//  JDYFM
//
//  Created by xiaoyang on 2017/1/3.
//  Copyright © 2017年 JDYang. All rights reserved.
//

#import "UIImage+JDYImage.h"

@implementation UIImage (JDYImage)

+ (UIImage *)originImageWithName:(NSString *)name{
    return [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

- (UIImage *)circleImage{
    
    CGSize size = self.size;
    CGFloat drawWH = size.width < size.height ? size.width : size.height;
    
    //1.开启图形上下文
    UIGraphicsBeginImageContext(CGSizeMake(drawWH, drawWH));
    //2.绘制一个圆形区域, 进行裁剪
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect clipRect = CGRectMake(0, 0, drawWH, drawWH);
    CGContextAddEllipseInRect(context, clipRect);
    CGContextClip(context);
    //3.绘制大图片
    CGRect drwaRect = CGRectMake(0, 0, size.width, size.height);
    [self drawInRect:drwaRect];
    //4.取出结果图片
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    //5.关闭上下文
    UIGraphicsEndImageContext();
    
    return resultImage;
}

@end
