//
//  ABFLabyrinthView.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFLabyrinthView.h"
#import "ABFLabyrinth.h"
#import "ABFWall.h"

@interface ABFLabyrinthView()

@property (nonatomic, strong) ABFLabyrinth *labyrinth;
@property (nonatomic, strong) NSMutableArray *wallsArray;

@end

@implementation ABFLabyrinthView

- (instancetype)init {
    self = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil][0];
    return self;
}

- (instancetype)initWithLabyrinth:(ABFLabyrinth *)labyrinth {
    self = [self init];
    if (self) {
        _labyrinth = labyrinth;
        _wallsArray = [NSMutableArray new];
        [self drawLabyrinth];
    }
    return self;
}

- (void)drawLabyrinth {
    for (NSArray *array in [self.labyrinth rowWalls]) {
        for (ABFWall *wall in array) {
            [self addSubview:wall];
            [self.wallsArray addObject:wall];
        }
    }
    
    for (NSArray *array in [self.labyrinth columnWalls]) {
        for (ABFWall *wall in array) {
            [self addSubview:wall];
            [self.wallsArray addObject:wall];
        }
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [[event allTouches] anyObject];
    CGPoint touchLocation = [touch locationInView:self];
    
    for (UIView *view in self.subviews)
    {
        if ([view isKindOfClass:[ABFWall class]] &&
            CGRectContainsPoint(view.frame, touchLocation))
        {
            [(ABFWall *)view wallTouched];
        }
    }
}

@end
