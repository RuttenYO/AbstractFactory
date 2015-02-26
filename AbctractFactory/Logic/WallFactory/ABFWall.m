//
//  ABFWall.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFWall.h"

@interface ABFWall()

@property (nonatomic, strong) UIGestureRecognizer *gestureRecognizer;

@end

@implementation ABFWall

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)wallTouched {
    NSLog(@"Some wall was touched");
}

@end
