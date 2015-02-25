//
//  ABFSoundWall.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFSoundWall.h"

@implementation ABFSoundWall

- (void)wallTouched {
    [super wallTouched];
    NSLog(@"It was SOUND wall");
}

@end
