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
@property (nonatomic, assign) CGFloat firstX;
@property (nonatomic, assign) CGFloat firstY;
@property (weak, nonatomic) IBOutlet UIImageView *gendaplhImageView;
@property (nonatomic, strong) UIPanGestureRecognizer *gendalphGestureRecognizer;

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
        _gendalphGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanAction:)];
        
        [self.gendaplhImageView addGestureRecognizer:self.gendalphGestureRecognizer];
        
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

- (void)handlePanAction:(UIPanGestureRecognizer *)recognizer {
    CGPoint translation = [recognizer translationInView:self];
    if(recognizer.state == UIGestureRecognizerStateBegan) {
        self.firstX = self.gendaplhImageView.center.x;
        self.firstY = self.gendaplhImageView.center.y;
    }
    translation = CGPointMake(self.firstX + translation.x, self.firstY + translation.y);
    self.gendaplhImageView.center = translation;
    
    for (ABFWall *wall in self.wallsArray) {
        if (CGRectIntersectsRect(self.gendaplhImageView.frame, wall.frame)) {
            [wall wallTouched];
        }
    }
}

@end
