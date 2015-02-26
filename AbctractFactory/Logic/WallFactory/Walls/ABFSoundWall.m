//
//  ABFSoundWall.m
//  AbctractFactory
//
//  Created by Artem  on 25/02/15.
//  Copyright (c) 2015 Artem . All rights reserved.
//

#import "ABFSoundWall.h"
#import <AVFoundation/AVFoundation.h>

@interface ABFSoundWall() <AVAudioPlayerDelegate>

@property (nonatomic, strong) AVAudioPlayer *backgroundMusicPlayer;

@end

@implementation ABFSoundWall

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setBackgroundColor:[UIColor blueColor]];
    }
    return self;
}

- (void)wallTouched {
    [super wallTouched];
    NSLog(@"It was SOUND wall");
    NSError *error = nil;
    NSURL *backgroundMusicURL = [[NSBundle mainBundle] URLForResource:@"You-shall-not-pass!" withExtension:@"mp3"];
    self.backgroundMusicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusicURL error:&error];
    [self.backgroundMusicPlayer setDelegate:self];
    [self.backgroundMusicPlayer prepareToPlay];
    [self.backgroundMusicPlayer play];
    
}

@end
