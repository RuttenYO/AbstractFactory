//
//  ABFWallFactory.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFWallFactory.h"
#import "ABFSoundWallFactory.h"
#import "ABFColorWallFactory.h"
#import "ABFWallTypeEnum.h"

@implementation ABFWallFactory

+ (ABFWallFactory *)getWallFactory {
    int typeNumber = arc4random() % 2;
    if (typeNumber == ABFWallSoundType) {
        return [[ABFSoundWallFactory alloc] init];
    }
    return [[ABFColorWallFactory alloc] init];
}

@end
