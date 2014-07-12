//
//  Page1.h
//  iOS_Quiz_Manan
//
//  Created by MANAN PANDYA on 2014-06-13.
//  Copyright (c) 2014 Pandya. All rights reserved.
//

#import <UIKit/UIKit.h>

int QuestionSelected;
BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;
int ScoreNumber=0;
int count = 0;



@interface Page1 : UIViewController
{
    
    IBOutlet UILabel *QuestionText;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UILabel *Message;
    IBOutlet UILabel *Score;
    IBOutlet UIButton *Home;
    
    IBOutlet UIButton *Replay;
    
    
}

-(void) QuestionLoad;

-(void) FinalResult;


@end
