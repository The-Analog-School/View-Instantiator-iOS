//
//  UIColor+Random.m
//  ViewInstantiator
//
//  Created by Christopher Constable on 1/20/14.
//  Copyright (c) 2014 Christopher Constable. All rights reserved.
//

#import "UIColor+Random.h"

@implementation UIColor (Random)

+ (UIColor *)randomColor
{
    return [UIColor colorWithRed:(arc4random() % 256) / 255.0
                           green:(arc4random() % 256) / 255.0
                            blue:(arc4random() % 256) / 255.0
                           alpha:1.0];
}

@end
