//
//  PropertyBaseLayerViewController.m
//  CoreaAnimationTest
//
//  Created by Ippei Sumida on 12/11/13.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PropertyBaseLayerViewController.h"

@implementation PropertyBaseLayerViewController

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
 * 角丸（マスク処理）にする
 */
- (void) setCornerRadius{
    // 画像のレイヤーを取得
    CALayer *layer = ivPicture.layer;
    
    // 角丸にする
    layer.masksToBounds = YES;
    layer.cornerRadius = 20.0f;
    
    
}

/**
 * サブレイヤー追加
 */
- (void) setSubLayer{
    // 新レイヤー作成
    CALayer *layer = [CALayer layer];
    
    // レイヤーを親レイヤーの真ん中に配置するよう設定
    // 親レイヤーのどこを基準にするか設定
    layer.position = CGPointMake(ivPicture.frame.size.width / 2,ivPicture.frame.size.height / 2);
    // サイズの指定
    layer.bounds = CGRectMake(0,0,150,150);
    
    
    // レイヤーに表示する画像の設定
    UIImage *image = [UIImage imageNamed: @"star.png"];
    layer.contents = (id) image.CGImage;
    
    // 写真にレイヤーを追加
    [ivPicture.layer addSublayer: layer];
    
    
}

/**
 * シャドウ追加
 */
- (void) setShadow{
    
    // 画像のレイヤーを取得
    CALayer *layer = ivPicture.layer;
    
    
    // シャドウの設定
    layer.masksToBounds = NO;
    layer.shadowOffset = CGSizeMake(2.5,2.5);
    layer.shadowColor = [[UIColor blueColor] CGColor];
    layer.shadowOpacity = 0.5;
    
    
}

#pragma mark - Action methods
- (IBAction) buttonPressed:(UIButton *)sender{
    // レイヤー作成
    if(sender.tag == 10){
        [self setCornerRadius];
    }else if(sender.tag == 20){
        [self setSubLayer];
    }else if(sender.tag == 30){
        [self setShadow];
    }
}

@end
