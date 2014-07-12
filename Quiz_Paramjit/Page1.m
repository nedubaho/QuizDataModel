//
//  Page1.m
//  iOS_Quiz_Manan
//
//  Created by Nwanegbo on 2014-06-13.
//  Copyright (c) 2014 Pandya. All rights reserved.
//

#import "Page1.h"

@interface Page1 ()

@end

@implementation Page1


-(void) QuestionLoad
{
  srandom(time(NULL));
    
    
    switch (QuestionSelected)
    {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of Nigeria?"];
            [Answer1 setTitle:@"Abuja" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Lagos" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Imo" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Enugu" forState:UIControlStateNormal];
            //whichever ans is correct among 4 declare it below
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of Iran?"];
            [Answer1 setTitle:@"Tehran" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Čizar" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Džamaran" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Gejtarije" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of India?"];
            [Answer1 setTitle:@"Kota" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ahmedabad" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mumbai" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Delhi" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of Canada?"];
            [Answer1 setTitle:@"Alberta" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ottawa" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Ontario" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Quebec" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of Germany?"];
            [Answer1 setTitle:@"Berlin" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Cologne" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Bayern" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Bremen" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of France?"];
            [Answer1 setTitle:@"Canada" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Jamaica" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Paris" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Spain" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of Italy?"];
            [Answer1 setTitle:@"London" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Nigeria" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Holland" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Rome" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of London?"];
            [Answer1 setTitle:@"Japan" forState:UIControlStateNormal];
            [Answer2 setTitle:@"England" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mota" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Manchester" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of Iraq?"];
            [Answer1 setTitle:@"Baghdad" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Egypt" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Isreal" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Gaza" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"what is the capital of South African?"];
            [Answer1 setTitle:@"Albanie" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ghana" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Johannesburg " forState:UIControlStateNormal];
            [Answer4 setTitle:@"Danemark" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;

        default:
            break;
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
    
    
    count = 0;
    ScoreNumber = 0;
    
    Message.hidden = YES;
    Score.hidden = YES;
    Home.hidden = YES;
    Replay.hidden = YES;
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
   QuestionSelected = arc4random_uniform(10);
    
    [self QuestionLoad];
    [super viewDidLoad];
   
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



- (IBAction)buttonPressed:(UIButton *)sender
{
    Answer1.tag = 1;
    Answer2.tag = 2;
    Answer3.tag = 3;
    Answer4.tag = 4;
    
    count = count+1;
    
    if (sender.tag == 1)
    {
        if(Answer1Correct == YES)
        {
            ScoreNumber = ScoreNumber + 1;
        }
    }
    
    else if (sender.tag == 2)
    {
        if(Answer2Correct == YES)
        {
            ScoreNumber = ScoreNumber + 1;
        }
        
    }
    
    else if (sender.tag == 3)
    {
        if(Answer3Correct == YES)
        {
            ScoreNumber = ScoreNumber + 1;
        }
        
    }
    
    else
    {
        if(Answer4Correct == YES)
        {
            ScoreNumber = ScoreNumber + 1;
        }
        
    }
    
    
    if (count<5)
    {
        QuestionSelected = arc4random_uniform(10);
        [self QuestionLoad];
    }
    else
    {
        [self FinalResult];
    }
}


-(void) FinalResult
{
    QuestionText.hidden = YES;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    
    Message.hidden = NO;
    Score.hidden = NO;
    Home.hidden = NO;
    if (ScoreNumber == 0)
    {
        Message.text = [NSString stringWithFormat:@"Please Try Again!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored: %i out of 5",ScoreNumber];
        Replay.hidden = NO;
        
    }
    else if (ScoreNumber == 1)
    {
        Message.text = [NSString stringWithFormat:@"Please Try Again!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored: %i out of 5",ScoreNumber];
        Replay.hidden = NO;
   
    }
    else if (ScoreNumber == 2)
    {
        Message.text = [NSString stringWithFormat:@"Please Try Again!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored: %i out of 5",ScoreNumber];
        Replay.hidden = NO;

    }
    else if (ScoreNumber == 3)
    {
        Message.text = [NSString stringWithFormat:@"Good Job!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored: %i out of 5",ScoreNumber];
        
    }
    else if (ScoreNumber == 4)
    {
        Message.text = [NSString stringWithFormat:@"Excellent Work!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored: %i out of 5",ScoreNumber];
        
    }
    else if(ScoreNumber == 5)
    {
        Message.text = [NSString stringWithFormat:@"You are a Genius!!!"];
        Score.text = [NSString stringWithFormat:@"You Have Scored: %i out of 5",ScoreNumber];
        
    }
    
    
}




@end
