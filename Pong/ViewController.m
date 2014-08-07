//
//  ViewController.m
//  Pong
//
//  Created by Oliver Staton on 8/6/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    AnimatedBackground.animationImages = [NSArray arrayWithObjects:
                                          [UIImage imageNamed:@"Desktop1.png"],
                                          [UIImage imageNamed:@"Desktop2.png"],
                                          [UIImage imageNamed:@"Desktop3.png"],
                                          [UIImage imageNamed:@"Desktop4.png"],
                                          [UIImage imageNamed:@"Desktop5.png"], nil];
    
    [AnimatedBackground setAnimationRepeatCount:0];
    [AnimatedBackground setAnimationDuration:5];
    [AnimatedBackground startAnimating];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
