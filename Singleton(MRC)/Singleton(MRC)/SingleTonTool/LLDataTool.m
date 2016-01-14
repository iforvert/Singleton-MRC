//
//  LLDataTools.m
//  单例设置模式
//
//  Created by LL on 14/12/29.
//  Copyright © 2014年 tete. All rights reserved.
//  利用GCD的方式创建单例

#import "LLDataTool.h"

@implementation LLDataTool
static id _instance;

+ (instancetype)allocWithZone:(struct _NSZone *)zone{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    
    return _instance;
}

+ (instancetype)sharedDataTools{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    
    return _instance;
    
}

- (id)copyWithZone:(NSZone *)zone{
    
    return _instance;
}

// MRC下需要实现的方法
- (oneway void)release{

}

- (NSUInteger)retainCount{
    return 1;
}

- (instancetype)retain{
    
    return _instance;
}

- (instancetype)autorelease{
    return _instance;
}
@end
