//
//  ViewController.h
//  AOC1Wk4_Johnson
//
//  Created by Carmen Johnson on 12/13/12.
//  Copyright (c) 2012 Carmen Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    UITextField *textField;
    UILabel *enterUser;
    UILabel *appCreatedBy;
    NSDate *date;
    NSDateFormatter *dateFormat;
    UIAlertView *alert;
}


// Performs an action when clicked
-(void)onClick:(UIButton*)button;


@end
