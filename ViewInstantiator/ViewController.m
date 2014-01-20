//
//  ViewController.m
//  ViewInstantiator
//
//  Created by Christopher Constable on 1/20/14.
//  Copyright (c) 2014 Christopher Constable. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Random.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *instantiatedObject;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.objectTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 30, 280, 50)];
    self.messageTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 90, 280, 50)];
    
    self.objectTextField.delegate = self;
    self.messageTextField.delegate = self;
    
    self.objectTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.messageTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.objectTextField.placeholder = @"object to instantiate";
    self.messageTextField.placeholder = @"message to pass to object";
    
    [self.view addSubview:self.objectTextField];
    [self.view addSubview:self.messageTextField];
    
    // Gestures use the target/action pattern. The action selector always receives the "sender"
    // object which is the object that invokes the action. The action is passed to the target.
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapWasRecognized:)];
    [self.view addGestureRecognizer:tapGesture];
}

- (void)tapWasRecognized:(UITapGestureRecognizer *)gesture
{
    [self.view endEditing:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.objectTextField) {
        
        Class class = NSClassFromString(textField.text);
        id object = [[class alloc] init];
        
        if (![object isMemberOfClass:[self.instantiatedObject class]]) {
            if (self.instantiatedObject) {
                [self.instantiatedObject removeFromSuperview];
            }
            
            // We can only add UIView's to screen...
            if ([object isKindOfClass:[UIView class]]) {
                self.instantiatedObject = object;
                self.instantiatedObject.frame = CGRectMake(0, 0, 280, 280);
                self.instantiatedObject.center = self.view.center;
                
                [self.view addSubview:self.instantiatedObject];
            }
        }
    }
    else if (textField == self.messageTextField) {
//        NSArray *components = [self.messageTextField.text componentsSeparatedByString:@":"];
//        
//        // for now, only allow one parameter
//        if (components.count == 2) {
//            NSString *methodSignature = [NSString stringWithFormat:@"%@:", components[0]];
//            [self.instantiatedObject performSelector:@selector(stringWithFormat:)
//                                          withObject:components[1]];
//        }
    }
    
    [textField resignFirstResponder];
    
    return YES;
}

@end
