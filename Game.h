//
//  Game.h
//  Pong
//
//  Created by Oliver Staton on 8/6/14.
//  Copyright (c) 2014 OllieStat. All rights reserved.
//

#import <UIKit/UIKit.h>

int Y;
int X;

@interface Game : UIViewController
{
    IBOutlet UIImageView *Ball;
    IBOutlet UIButton *StartButton;
    
    NSTimer *timer;
}

-(IBAction)StartButton:(id)sender;
-(void)BallMovement;

@end
