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

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
  if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound) {
    return YES;
  }
  [textView resignFirstResponder];
  return NO;
}

@end
