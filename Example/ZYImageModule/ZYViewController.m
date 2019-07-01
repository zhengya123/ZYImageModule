//
//  ZYViewController.m
//  ZYImageModule
//
//  Created by zhengya123 on 06/28/2019.
//  Copyright (c) 2019 zhengya123. All rights reserved.
//

#import "ZYViewController.h"
#import "UIImage+ZYBundle.h"
#import "UIImageMethod.h"
@interface ZYViewController ()

@end

@implementation ZYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView * img = [UIImageView new];
    img.backgroundColor = [UIColor yellowColor];
    img.frame = CGRectMake(10, 100, 100, 100);
    //img.image = [UIImage Zy_imgWithName:@"upVersionHeaderImage"  targetClass:[self class]];
    //img.image = [UIImage Zy_imageWithName:@"upVersionHeaderImage" bundle:@"ZYImageModule" targetClass:[self class]];
    //img.image = [UIImage Zy_imgWithName:@"upVersionHeaderImage" targetClass:[self class]];
    
//    NSBundle *currentBundle = [NSBundle bundleForClass:[self class]]; //图片名称要写全称
//    NSString *path = [currentBundle pathForResource:@"upVersionHeaderImage.png" ofType:nil inDirectory:@"ZYImageModule.bundle"];
//    img.image = [UIImage imageWithContentsOfFile:path];
    //img.image = [UIImage ZYImageWithName:@"upVersionHeaderImage" TargetClass:[self class]];
    //img.image = [UIImageMethod ZYImageWithName:@"upVersionHeaderImage" TargetClass:[self class]];
    
    
    NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                            stringByAppendingPathComponent:@"/ImageSourceModule.bundle"];
    NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
    UIImage *image = [UIImage imageNamed:@"upVersionHeaderImage"
                                inBundle:resource_bundle
           compatibleWithTraitCollection:nil];
    img.image = image;
    [self.view addSubview:img];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
