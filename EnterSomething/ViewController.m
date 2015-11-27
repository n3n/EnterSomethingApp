//
//  ViewController.m
//  EnterSomething
//
//  Created by admin on 9/9/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

@implementation ViewController

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.inputTextField) {
        [textField resignFirstResponder];
    }
    return YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)createOutputText:(NSString *)inputText {
    return [NSString stringWithFormat:@"You entered: %ld characters", inputText.length];
}

- (IBAction)inputButtonTapped:(id)sender {
    self.outputLabel.text = [self createOutputText:self.inputTextField.text];
}

@end











