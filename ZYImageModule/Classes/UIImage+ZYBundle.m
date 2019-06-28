//
//  UIImage+ZYBundle.m
//  HttpDemo
//
//  Created by 郑亚 on 2019/6/28.
//  Copyright © 2019 郑亚. All rights reserved.
//

#import "UIImage+ZYBundle.h"

@implementation UIImage (ZYBundle)
+ (instancetype)Zy_imgWithName:(NSString *)name targetClass:(Class)targetClass{
    //NSInteger scale = [[UIScreen mainScreen] scale];
    NSBundle *curB = [NSBundle bundleForClass:targetClass];
    NSString *imgName = [NSString stringWithFormat:@"%@.png", name];
    NSString *path = [curB pathForResource:imgName ofType:nil inDirectory:@"ZYImageModule.bundle"];
    return path?[UIImage imageWithContentsOfFile:path]:nil;
}
@end
