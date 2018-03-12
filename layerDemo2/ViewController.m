//
//  ViewController.m
//  layerDemo2
//
//  Created by PatrickY on 2018/3/12.
//  Copyright © 2018年 PatrickY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secView;
@property (weak, nonatomic) IBOutlet UIView *thdView;
@property (weak, nonatomic) IBOutlet UIView *forView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"03.jpg"];
    
    [self addSpriteImage:image withContentRect:CGRectMake(0, 0, 0.5, 0.5) toLayer:self.firstView.layer];
    
    [self addSpriteImage:image withContentRect:CGRectMake(0, 0.5, 0.5, 0.5) toLayer:self.secView.layer];
    
    [self addSpriteImage:image withContentRect:CGRectMake(0.5, 0, 0.5, 0.5) toLayer:self.thdView.layer];
    
    [self addSpriteImage:image withContentRect:CGRectMake(0.5, 0.5, 0.5, 0.5) toLayer:self.forView.layer];
    
}



- (void)addSpriteImage:(UIImage *)image withContentRect:(CGRect)rect toLayer:(CALayer *)layer {
    //设置图片
    layer.contents = (__bridge id)image.CGImage;
    
    //scale
    layer.contentsGravity = kCAGravityResizeAspect;
    
    //设置contentsRect
    layer.contentsRect = rect;
}

@end
