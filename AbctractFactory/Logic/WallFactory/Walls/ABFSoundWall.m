//
//  ABFSoundWall.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFSoundWall.h"

@implementation ABFSoundWall

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor blueColor]];
    }
    return self;
}

- (void)wallTouched {
    [super wallTouched];
    NSLog(@"It was SOUND wall");
}

@end
