//
//  ABFColorWall.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFColorWall.h"

@implementation ABFColorWall

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor redColor]];
    }
    return self;
}

- (void)wallTouched {
    [super wallTouched];
    NSLog(@"It was COLOR wall");
}

@end
