//
//  TableViewViewController.h
//  iOSBeginners
//
//  Created by Adam Musial-Bright on 1/30/13.
//  Copyright (c) 2013 Adam Musial-Bright. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Window.h"

@interface HouseViewController : UIViewController <NoiseDelegate> {

    IBOutlet UIButton *northWindowButton;
    IBOutlet UIButton *southWindowButton;
    IBOutlet UIImageView *northImageView;
    IBOutlet UIImageView *southImageView;
    IBOutlet UILabel *noiseLabel;
}
@end
