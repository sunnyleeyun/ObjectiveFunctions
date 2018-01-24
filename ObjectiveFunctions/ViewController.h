//
//  ViewController.h
//  ObjectiveFunctions
//
//  Created by Mac on 2018/1/24.
//  Copyright © 2018年 Sunny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)enterText:(id)sender;

@end

