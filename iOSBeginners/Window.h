//
//  Window.h
//  iOSBeginners
//
//  Created by Adam Musial-Bright on 1/30/13.
//  Copyright (c) 2013 Adam Musial-Bright. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NoiseDelegate <NSObject>
@required
- (void)makesNoise:(NSString *)noise;
@end

@interface Window : NSObject {
    id <NoiseDelegate> delegate;
}

@property id delegate;

- (void)open;

- (void)close;

- (BOOL)isOpen;

- (UIImage *)image;

@end
