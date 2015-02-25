//
//  ABFColorWallFactory.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFColorWallFactory.h"
#import "ABFColorWall.h"

@implementation ABFColorWallFactory

- (ABFWall *)getWall {
    ABFColorWall *colorWall = [[ABFColorWall alloc] initWithFrame:CGRectMake(20, 20, 80, 2)];
    return colorWall;
}

@end
