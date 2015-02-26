//
//  ABFSoundWallFactory.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFSoundWallFactory.h"
#import "ABFSoundWall.h"

@implementation ABFSoundWallFactory

- (ABFWall *)getWall {
    ABFSoundWall *soundWall = [[ABFSoundWall alloc] init];
    return soundWall;
}

@end
