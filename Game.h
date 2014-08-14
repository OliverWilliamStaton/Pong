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
int ComputerScoreNumber;
int PlayerScoreNumber;

@interface Game : UIViewController
{
    IBOutlet UIButton *StartButton;
    IBOutlet UIImageView *Ball;
    IBOutlet UIImageView *Player;
    IBOutlet UIImageView *Computer;
    
    IBOutlet UILabel *PlayerScore;
    IBOutlet UILabel *ComputerScore;
    IBOutlet UILabel *WinOrLose;
    IBOutlet UIButton *Exit;
    IBOutlet UIButton *Quit;
    
    NSTimer *timer;
}

-(IBAction)StartButton:(id)sender;
-(void)BallMovement;
-(void)ComputerMovement;
-(void)Collision;

@end
