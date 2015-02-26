//
//  ABFLabyrinthView.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFLabyrinthView.h"
#import "ABFLabyrinth.h"

@interface ABFLabyrinthView()

@property (nonatomic, strong) ABFLabyrinth *labyrinth;

@end

@implementation ABFLabyrinthView

- (instancetype)initWithLabyrinth:(ABFLabyrinth *)labyrinth {
    self = [self init];
    if (self) {
        _labyrinth = labyrinth;
    }
    return self;
}

@end
