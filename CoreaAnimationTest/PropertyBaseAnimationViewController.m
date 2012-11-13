//
//  PropertyBaseAnimationViewController.m
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/13.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PropertyBaseAnimationViewController.h"

@implementation PropertyBaseAnimationViewController

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
 *
 * @param NSString* 回転軸
 */
- (void) startAnimation: (NSString *) axis{
    // アニメーションの初期化
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath: @"transform"];
    
    // 回転の開始と終了の角度を設定
    animation.fromValue = [NSNumber numberWithDouble: 0];
    animation.toValue = [NSNumber numberWithDouble: 2 * M_PI]; // 360度
    
    // 回転軸の設定
    if([axis isEqualToString: @"x"]){
        animation.valueFunction = [CAValueFunction functionWithName: kCAValueFunctionRotateX];
    }else if([axis isEqualToString: @"y"]){
        animation.valueFunction = [CAValueFunction functionWithName: kCAValueFunctionRotateY];
    }else{
        animation.valueFunction = [CAValueFunction functionWithName: kCAValueFunctionRotateZ];
    }
    
    // アニメーションの時間
    animation.duration = 0.5;
    
    // アニメーションのリピート回数
    animation.repeatCount = 5;
    
    // アニメーションをレイヤーにセット
    [ivPicture.layer addAnimation: animation forKey: nil];
    
}

#pragma mark -
#pragma mark Action methods
/**
 * ボタン押下
 *
 * @param UIButton
 * @return IBAction
 */
- (IBAction) buttonPressed:(UIButton *)sender{
    // アニメーション開始
    NSString *axis = @"x";
    if(sender.tag == 10){
        axis = @"x";
    }else if(sender.tag == 20){
        axis = @"y";
    }else{
        axis = @"z";
    }
    [self startAnimation:axis];
}
@end
