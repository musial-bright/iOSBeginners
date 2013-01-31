//
//  Window.m
//  iOSBeginners
//
//  Created by Adam Musial-Bright on 1/30/13.
//  Copyright (c) 2013 Adam Musial-Bright. All rights reserved.
//

#import "Window.h"

@interface Window()
@property NSString *state;
@end

@implementation Window

@synthesize state = _state;

@synthesize delegate = _delegate;

- (id)init {
    if (self = [super init]) {
        self.state = @"closed";
        return self;
    } else {
        return nil;
    }
}

- (void)open {
    self.state = @"open";
}

- (void)close {
    self.state = @"closed";
    int r = arc4random() % 4;
    if (r == 0) {
        [self.delegate makesNoise:@"bang!"];
    } else {
        [self.delegate makesNoise:@""];
    }
}

- (BOOL)isOpen {
    if ([self.state isEqualToString:@"open"]) {
        return YES;
    } else {
        return NO;
    }
}

- (UIImage *)image {
    NSString *imageName = [NSString stringWithFormat:@"window-%@", self.state];
    UIImage *image = [UIImage imageNamed:imageName];
    return image;
}

@end
