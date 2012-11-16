//
//  DelegateBaseLayerViewController.m
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/14.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DelegateBaseLayerViewController.h"

@implementation DelegateBaseLayerViewController

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
    CALayer *layer = [CALayer layer];
    layer.delegate = self;
    layer.bounds = [ivPicture bounds];
    [layer setNeedsDisplay];
    [ivPicture.layer addSublayer: layer];
    
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

#pragma mark - Action methods
/**
 * ボタン押下
 * @param UIButton * sender
 */
- (IBAction) buttonPressed:(UIButton *)sender{
    
}

#pragma mark - CALayer delegate
/**
 * レイヤー描写
 */
- (void) drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx{
    
    // 左端に赤四角を配置
    CGContextSetRGBFillColor(ctx, 1.0f, 0.0f, 0.0f, 1.0f);
    CGRect rect = CGRectInset([ivPicture bounds], 40, 40);
    CGContextFillRect(ctx, rect);    
}

@end
