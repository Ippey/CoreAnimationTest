//
//  ImplicitAnimationViewController.m
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/14.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ImplicitAnimationViewController.h"

@implementation ImplicitAnimationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Original methods
/**
 * アニメーション開始
 */
- (void) startAnimation{
    CALayer *layer = ivPicture.layer;
    layer.delegate = self; // delegateの設定がないとアニメーションしない
    // 回転（なぜか360度を指定すると回転しないので180度）
    CATransform3D transform = CATransform3DMakeRotation(1.0 * M_PI,0,0,1.0);
    CGRect frame = ivPicture.frame;
    frame.origin.x -= 10;
    layer.frame = frame;
    layer.transform = transform;
    
}


#pragma mark - Action methods
/**
 * ボタン押下
 * @param UIButton * sender
 */
- (IBAction) buttonPressed:(UIButton *)sender{
    [self startAnimation];
}
@end
