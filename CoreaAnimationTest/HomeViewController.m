//
//  HomeViewController.m
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/13.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"

@implementation HomeViewController

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

#pragma mark -
#pragma mark Action methods

/**
 * ボタン押下アクション
 * 
 * @param UIButton * sender
 * @return IBAction
 */
- (IBAction) buttonPressed:(UIButton *)sender{
    if(sender.tag == 10){
        // プロパティベース　レイヤー
        PropertyBaseLayerViewController *pvc = [[PropertyBaseLayerViewController alloc]
                                                initWithNibName: @"PropertyBaseLayerView"
                                                bundle: nil];
        [self.navigationController pushViewController: pvc animated: YES];
    }else if(sender.tag == 30){
        // プロパティベース　アニメーション
        PropertyBaseAnimationViewController *pvc = [[PropertyBaseAnimationViewController alloc]
                                                    initWithNibName: @"PropertyBaseAnimationView"
                                                    bundle: nil];
        [self.navigationController pushViewController: pvc animated: YES];
    }
}

@end
