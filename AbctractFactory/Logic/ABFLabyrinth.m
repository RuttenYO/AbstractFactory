//
//  ABFLabyrinth.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFLabyrinth.h"
#import "ABFWallFactory.h"
#import "ABFWall.h"

static const int kABFRowsInLineNumber = 5;
static const int kABFColumnsInLineNumber = 5;
static const int kABFLinesNumber = 4;

@interface ABFLabyrinth()

@property (nonatomic, strong) NSMutableArray *rowWalls;
@property (nonatomic, strong) NSMutableArray *columnWalls;

@end

@implementation ABFLabyrinth

- (instancetype)init {
    self = [super init];
    if (self) {
        [self generateLabyrinth];
    }
    return self;
}

- (void)generateLabyrinth {
    _rowWalls = [NSMutableArray new];
    _columnWalls = [NSMutableArray new];
    
    for (int lineNumber = 0 ; lineNumber < kABFLinesNumber; lineNumber++) {
        NSMutableArray *wallsInLine = [NSMutableArray new];
        for (int rowInLineNumber = 0; rowInLineNumber < kABFRowsInLineNumber; rowInLineNumber++) {
            if ([self isRowWallExistInLine:lineNumber atIndex:rowInLineNumber]) {
                ABFWall * rowWall = [self wall];
                [rowWall setFrame:CGRectMake(rowInLineNumber * 80, lineNumber * 80, 2, 80)];
                [wallsInLine addObject:rowWall];
            }
        }
        [self.rowWalls addObject:wallsInLine];
    }
    
    for (int lineNumber = 0 ; lineNumber < kABFLinesNumber; lineNumber++) {
        NSMutableArray *wallsInLine = [NSMutableArray new];
        for (int columnInLineNumber = 0; columnInLineNumber < kABFColumnsInLineNumber; columnInLineNumber++) {
            if ([self isColumnWallExistInLine:lineNumber atIndex:columnInLineNumber]) {
                ABFWall * columnWall = [self wall];
                [columnWall setFrame:CGRectMake(lineNumber * 80, columnInLineNumber * 80, 80, 2)];
                [wallsInLine addObject:columnWall];
            }
        }
        [self.columnWalls addObject:wallsInLine];
    }
}

#pragma mark - Helpers

- (BOOL)isRowWallExistInLine:(int)line atIndex:(int)index {
    if (line == 0 && index == 2) return NO;
    else if (line == 1) {
        if (index == 1 || index == 2 || index == 3) return NO;
    }
    else if (line == 2 && index == 1) return NO;
    else if (line == 3) {
        if (index == 2 || index == 3) return NO;
    }
    return YES;
}

- (BOOL)isColumnWallExistInLine:(int)line atIndex:(int)index {
    if (line == 0) {
        if (index == 1 || index == 3) return NO;
    }
    else if (line == 1) {
        if (index == 1 || index == 2) return NO;
    }
    else if (line == 2) {
        if (index == 2 || index == 3) return NO;
    }
    else if (line == 3) {
        if (index == 1 || index == 2) return NO;
    }
    return YES;
}

#pragma mark - Wall Factory

- (ABFWall *)wall {
    ABFWallFactory *wallFactory = [ABFWallFactory getWallFactory];
    return [wallFactory getWall];
}

@end
