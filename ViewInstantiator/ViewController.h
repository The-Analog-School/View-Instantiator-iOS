//
//  ViewController.h
//  ViewInstantiator
//
//  Created by Christopher Constable on 1/20/14.
//  Copyright (c) 2014 Christopher Constable. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) UITextField *objectTextField;
@property (nonatomic, strong) UITextField *messageTextField;

@end
