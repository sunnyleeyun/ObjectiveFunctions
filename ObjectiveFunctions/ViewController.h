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


- (IBAction)setColor:(id)sender;
- (IBAction)setBackground:(id)sender;
- (IBAction)fontSize:(id)sender;
- (IBAction)dropShadow:(id)sender;
- (IBAction)shadowColor:(id)sender;
- (IBAction)center:(id)sender;
- (IBAction)left:(id)sender;
- (IBAction)right:(id)sender;

- (IBAction)customFont:(id)sender;


@end

