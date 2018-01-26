//
//  ViewController.m
//  ObjectiveFunctions
//
//  Created by Mac on 2018/1/24.
//  Copyright © 2018年 Sunny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.label.text = @"Apple";
  self.textView.text = @"Banana";
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (IBAction)enterText:(id)sender {
  self.label.text = self.textField.text;
  [self resignFirstResponder];
}

- (IBAction)setColor:(id)sender {
  self.label.textColor = [UIColor redColor];
}

- (IBAction)setBackground:(id)sender {
  self.label.backgroundColor = [UIColor blackColor];
}

- (IBAction)fontSize:(id)sender {
  [self.label setFont:[UIFont fontWithName:@"Futura" size:30]];
}

- (IBAction)dropShadow:(id)sender {
  self.label.layer.shadowColor = [[UIColor blackColor] CGColor];
  self.label.layer.shadowOpacity = 0.5;
  self.label.layer.shadowRadius = 1.0f;
  self.label.layer.shadowOffset = CGSizeMake(2, -5);
}

- (IBAction)shadowColor:(id)sender {
  self.label.layer.shadowColor = [[UIColor blueColor] CGColor];
}

- (IBAction)center:(id)sender {
  self.label.textAlignment = NSTextAlignmentCenter;
}

- (IBAction)left:(id)sender {
  self.label.textAlignment = NSTextAlignmentLeft;
}

- (IBAction)right:(id)sender {
  self.label.textAlignment = NSTextAlignmentRight;
}

- (IBAction)customFont:(id)sender {
  [self.label setFont:[UIFont fontWithName:@"edgeracer" size:30]];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
  if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
    return YES;
  }
  [textView resignFirstResponder];
  return NO;
}

@end
