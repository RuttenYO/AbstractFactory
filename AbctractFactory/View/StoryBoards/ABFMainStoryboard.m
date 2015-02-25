//
//  ABFMainStoryboard.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFMainStoryboard.h"

@implementation ABFMainStoryboard

- (ABFMainScreenViewController *)mainScreenViewController {
    return [self instantiateViewControllerWithIdentifier:@"main screen"];
}

@end
