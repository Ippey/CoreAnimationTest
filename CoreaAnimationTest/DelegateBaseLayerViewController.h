//
//  DelegateBaseLayerViewController.h
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/14.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface DelegateBaseLayerViewController : UIViewController
{
    IBOutlet UIImageView *ivPicture;
}

- (IBAction) buttonPressed: (UIButton *) sender;

@end
