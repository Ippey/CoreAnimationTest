//
//  TransactionViewController.m
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/15.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TransactionViewController.h"

@implementation TransactionViewController

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
 * 暗黙的トランザクション実行
 * 
 */
- (void) setImplicitTransaction{
    CALayer *layer = ivPicture.layer;
    layer.delegate = self; // delegateの設定がないとアニメーションしない
    
    // 暗黙的に50x50ピクセル左上に動かす
    CGRect frame = ivPicture.frame;
    frame.origin.x -= 50;
    frame.origin.y -= 50;
    layer.frame = frame;
    
    layer.opacity = 1.0; // 透明度を元に戻す
    
}

/**
 * 明示的トランザクション実行
 * 
 */
- (void) setExplicitTransaction{
    CALayer *layer = ivPicture.layer;
    layer.delegate = nil;
    
    
    // トランザクション開始
    [CATransaction begin];
    [CATransaction setValue: [NSNumber numberWithFloat: 2.0f]
                     forKey: kCATransactionAnimationDuration];
    
    // 明示的に2秒で50x50ピクセル右下に動かす
    CGRect frame = ivPicture.frame;
    frame.origin.x += 50;
    frame.origin.y += 50;
    layer.frame = frame;
    
    // 2つ目のトランザクション開始
    [CATransaction begin];
    [CATransaction setValue: [NSNumber numberWithFloat: 5.0f]
                     forKey: kCATransactionAnimationDuration];
    
    // 明示的に5秒で透明にする
    layer.opacity = 0.0;
    
    // 2つ目のトランザクションコミット
    [CATransaction commit];
    
    // 最初のトランザクションコミット
    [CATransaction commit];
    
    
    
}

#pragma mark - Action methods
/**
 * ボタン押下
 *
 */
- (IBAction) buttonPressed:(UIButton *) sender{
    if(sender.tag == 10){
        [self setImplicitTransaction];
    }else{
        [self setExplicitTransaction];
    }
    
    
}



@end
