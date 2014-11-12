//
//  ViewController.h
//  Prereq for Overdue Assignment
//
//  Created by Matthew Linaberry on 11/11/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)buttonClick:(UIButton *)sender;


@end

