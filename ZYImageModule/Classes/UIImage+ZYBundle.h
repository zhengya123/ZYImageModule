//
//  UIImage+ZYBundle.h
//  HttpDemo
//
//  Created by 郑亚 on 2019/6/28.
//  Copyright © 2019 郑亚. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ZYBundle)

+ (instancetype)Zy_imgWithName:(NSString *)name targetClass:(Class)targetClass;

@end

NS_ASSUME_NONNULL_END
