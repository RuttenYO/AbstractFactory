//
//  ViewController.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFMainScreenViewController.h"
#import "ABFLabyrinth.h"
#import "ABFLabyrinthView.h"

@interface ABFMainScreenViewController ()

@property (nonatomic, weak) IBOutlet UIView *contentView;
@property (nonatomic, strong) ABFLabyrinth *labyrinth;
@property (nonatomic, strong) ABFLabyrinthView *labyrinthView;

@end

@implementation ABFMainScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labyrinth = [[ABFLabyrinth alloc] init];
    
    _labyrinthView = [[ABFLabyrinthView alloc] initWithLabyrinth:_labyrinth];
    
    [self.contentView addSubview:_labyrinthView];

}

@end
