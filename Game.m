//
//  Game.m
//  Pong
//
//  Created by Oliver Staton on 8/6/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)StartButton:(id)sender
{
    // Generate a number between 0 and 11
    Y = arc4random() %11;
    X = arc4random() %11;

    // Display something between -5 and +5
    Y = Y - 5;
    X = X - 5;
    
    // Ensure that X and Y are non-zero values
    if(Y == 0)
    {
        Y = 1;
    }
    if(X == 0)
    {
        X = 1;
    }
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0x01 target:(self) selector:@selector(BallMovement) userInfo:nil repeats:YES];
}

-(void)BallMovement
{
    Ball.center = CGPointMake(Ball.center.x + X, Ball.center.y + Y);
    
    if((Ball.center.x < 15) ||
       (Ball.center.x > 305))
    {
        X = 0 - X;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
