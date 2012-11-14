//
//  ImplicitAnimationViewController.h
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/14.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ImplicitAnimationViewController : UIViewController
{
    IBOutlet UIImageView *ivPicture;
}

- (IBAction) buttonPressed: (UIButton *) sender;
- (void) startAnimation;

@end
