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

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    // Have the player image follow the mouse location
    UITouch *Drag = [[event allTouches] anyObject];
    Player.center = [Drag locationInView:self.view];

    // Lock the player image into y-axis 525
    if((Player.center.y > 525) || (Player.center.y < 525))
    {
        Player.center = CGPointMake(Player.center.x, 525);
    }
    
    // Prevent the player from passing the left edge
    if(Player.center.x < 0)
    {
        Player.center = CGPointMake(0, Player.center.y);
    }
    
    // Prevent the player from passing the right edge
    if(Player.center.x > 320)
    {
        Player.center = CGPointMake(320, Player.center.y);
    }
}

-(void)ComputerMovement
{
    // Move the computer left when the ball moves left
    if(Computer.center.x > Ball.center.x)
    {
        Computer.center = CGPointMake(Computer.center.x - 2, Computer.center.y);
    }
    
    // Move the computer right when the ball moves right
    if(Computer.center.x < Ball.center.x)
    {
        Computer.center = CGPointMake(Computer.center.x + 2, Computer.center.y);
    }
    
    // Prevent the computer from passing the left edge
    if(Computer.center.x < 0)
    {
        Computer.center = CGPointMake(0, Computer.center.y);
    }
    
    // Prevent the computer from passing the right edge
    if(Computer.center.x > 320)
    {
        Computer.center = CGPointMake(246, Computer.center.y);
    }
}

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
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:(self) selector:@selector(BallMovement) userInfo:nil repeats:YES];
}

-(void)BallMovement
{
    [self ComputerMovement];
    
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
