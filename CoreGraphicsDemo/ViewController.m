//
//  ViewController.m
//  CoreGraphicsDemo
//
//  Created by apple on 2018/3/22.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "ViewController.h"
#import "DeeQRCodeDemoLayer.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    DeeQRCodeDemoLayer *layer = [[DeeQRCodeDemoLayer alloc] initWithClearRect:CGRectMake(100, 100, 100, 100)];
    [layer setFrame:self.view.bounds];
    [self.view.layer addSublayer:layer];
    [layer setNeedsDisplay];
    [layer startAnimationWithScanLine:[UIImage imageNamed:@"line.png"]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
