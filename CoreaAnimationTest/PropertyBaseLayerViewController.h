//
//  PropertyBaseLayerViewController.h
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/13.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface PropertyBaseLayerViewController : UIViewController
{
    IBOutlet UIImageView *ivPicture;
}

- (void) setCornerRadius;
- (void) setSubLayer;
- (void) setShadow;
- (IBAction) buttonPressed: (UIButton *) sender;

@end
