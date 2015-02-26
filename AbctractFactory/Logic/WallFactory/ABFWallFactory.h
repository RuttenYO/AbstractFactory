//
//  ABFWallFactory.h
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

@class ABFWall;

@interface ABFWallFactory : NSObject

+ (ABFWallFactory *)getWallFactory;
- (ABFWall *)getWall;

@end
