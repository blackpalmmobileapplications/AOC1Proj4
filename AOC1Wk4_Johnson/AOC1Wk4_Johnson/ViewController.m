//
//  ViewController.m
//  AOC1Wk4_Johnson
//
//  Created by Carmen Johnson on 12/13/12.
//  Copyright (c) 2012 Carmen Johnson. All rights reserved.
//

#define login_Button 0
#define date_Button 1
#define info_Button 2
#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    // Final Project(4) starts here
    
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    
    // Label for userName
    UILabel *userName = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 88.0f, 30.0f)];
    if (userName != nil);
    {
        userName.text = @"Username: ";
        userName.textColor = [UIColor whiteColor];
        [userName setBackgroundColor: [UIColor clearColor]];
    }
    
    // textField login here
    textField = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 10.0f, 200.0f, 30.0f)];
    if (textField != nil);
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [textField addTarget:self action:@selector(resignFirstResponder)forControlEvents:UIControlEventEditingDidEndOnExit];
    }
    
    // Login Button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (loginButton != nil);
    {
        loginButton.frame = CGRectMake(210.0f, 45.0f, 100.0f, 35.0f);
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        
        loginButton.tag = login_Button;
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    
    //
    // UILabel "Enter Username Here"
    enterUser = [[UILabel alloc] initWithFrame:CGRectMake(00.0f, 100.0f, 320.0f, 50.0f)];
    if (enterUser != nil);
    {
        enterUser.text = @"Enter User Name Here";
        enterUser.textColor = [UIColor blackColor];
        enterUser.textAlignment = NSTextAlignmentCenter;
    }
    
    // Info Button
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(10.0f, 280.0f, 25.0f, 25.0f);
        infoButton.tag = info_Button;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    // UILabel "App Created By:"
    appCreatedBy = [[UILabel alloc] initWithFrame:CGRectMake(00.0f, 320.0f, 320.0f, 50.0f)];
    if (appCreatedBy != nil)
    {
        appCreatedBy.textColor = [UIColor blueColor];
        appCreatedBy.numberOfLines = 2;
        [appCreatedBy setBackgroundColor: [UIColor clearColor]];
    }
    
    
    //
    // Show the Date Button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (dateButton != nil);
    {
        dateButton.frame = CGRectMake(10.0f, 200.0f, 100.0f, 40.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        
        dateButton.tag = date_Button;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
    //
    // ----- Subviews -----
    [self.view addSubview:userName];
    [self.view addSubview:textField];
    [self.view addSubview:loginButton];
    [self.view addSubview:enterUser];
    [self.view addSubview:infoButton];
    [self.view addSubview:appCreatedBy];
    [self.view addSubview:dateButton];
    
    [super viewDidLoad];
	
}

// onClick function
-(void)onClick:(UIButton*)button
{
    
    // Login button User Info Text
    if (button.tag == login_Button)
    {
        NSString *userInput = [textField text];
        if (userInput.length > 0)
        {
            enterUser.text = [NSString stringWithFormat:@"User: %@ has been logged in.", userInput];
        }
        else
        {
            enterUser.text = @"Username cannot be empty";
        }
        
    }
    
    // Date Alert
    if (button.tag == date_Button)
    {
        date = [NSDate date];
        
        dateFormat = [[NSDateFormatter alloc] init];
        if (dateFormat != nil)
        {
            [dateFormat setDateFormat:@"MMMM d, y  h:mm:ssa  zzzz"];
            
            alert = [[UIAlertView alloc] initWithTitle:@"Date" message:[NSString stringWithFormat:@"%@", [dateFormat stringFromDate:date]] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            if (alert != nil)
            {
                [alert show];
            }
            else
            {
                NSLog(@"Something went wrong!");
            }
        }
    }
    
    // Application created by info
    if (button.tag == info_Button)
    {
        if (appCreatedBy != nil)
        {
            appCreatedBy.text = @"This application was created by:Carmen Johnson";
        }
        else
        {
            appCreatedBy.text = @"Information Error!";
        }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
