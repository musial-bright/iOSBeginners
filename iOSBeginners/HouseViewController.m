//
//  TableViewViewController.m
//  iOSBeginners
//
//  Created by Adam Musial-Bright on 1/30/13.
//  Copyright (c) 2013 Adam Musial-Bright. All rights reserved.
//

#import "HouseViewController.h"

@interface HouseViewController ()
@property Window *northWindow;
@property Window *southWindow;
@end

@implementation HouseViewController

@synthesize northWindow = _northWindow;
@synthesize southWindow = _southWindow;

- (IBAction)northWindow:(id)sender {
    if ([self.northWindow isOpen]) {
        [self.northWindow close];
    } else {
        [self.northWindow open];
    }
    northImageView.image = [self.northWindow image];
}

- (IBAction)southWindow:(id)sender {
    if ([self.southWindow isOpen]) {
        [self.southWindow close];
    } else {
        [self.southWindow open];
    }
    southImageView.image = [self.southWindow image];
}

- (void)makesNoise:(NSString *)noise {
    noiseLabel.text = noise;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.northWindow = [[Window alloc] init];
    self.southWindow = [[Window alloc] init];
    [self.northWindow setDelegate:self];
    [self.southWindow setDelegate:self];
    northImageView.image = [self.northWindow image];
    southImageView.image = [self.southWindow image];
}

@end
