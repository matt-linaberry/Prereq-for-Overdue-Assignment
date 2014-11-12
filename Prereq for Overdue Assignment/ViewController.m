//
//  ViewController.m
//  Prereq for Overdue Assignment
//
//  Created by Matthew Linaberry on 11/11/14.
//  Copyright (c) 2014 Matthew Linaberry. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //NSLog(@"%@, %@", USER_NAME, USER_PASSWORD);
    NSLog(self.textView.text);
    self.textView.delegate=self;
    NSMutableArray *myMutableArray = [@[@1, @"hello", @3, @"goodbye"] mutableCopy];
    [myMutableArray insertObject:@"this should be first" atIndex:0];
    NSLog(@"%@", myMutableArray);
    [myMutableArray removeObjectAtIndex:2];
    NSLog(@"%@", myMutableArray);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"])
    {
        [self.textView resignFirstResponder];
        return NO;
    }
    else
    {
        return YES;
    }
}
- (IBAction)buttonClick:(UIButton *)sender {
    NSDate *date = self.datePicker.date;
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateFormat:@"yyyy-MM-dd"];
    
    NSString *stringFromDate = [formatter stringFromDate:date];
    NSLog(@"%@", stringFromDate);
    NSLog(@"%@", [NSDate date]);
    
    int timeInterval = [date timeIntervalSince1970];
    NSLog(@"%i", timeInterval);
}
@end
