//
//  UIView+AddRoundedCorners.m
//  DigitalGymIOS
//
//  Created by David Bayón on 07/07/14.
//  Copyright (c) 2014 david bayon. All rights reserved.
//

#import "UIView+AddRoundedCorners.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (AddRoundedCorners)

- (void)addRoundedCornersWithRadious:(int)radious
{
    [self.layer setCornerRadius:radious];
    self.layer.masksToBounds = YES;
}

- (void)addRoundedBorderWithRadious:(int)radious andColor:(UIColor*)color
{
    [self.layer setCornerRadius:radious];
    [self.layer setBorderColor:color.CGColor];
    [self.layer setBorderWidth:1.0];
    self.layer.masksToBounds = YES;
}

- (void)addRoundedBorderWithRadious:(int)radious width:(float)witdth andColor:(UIColor*)color
{
    [self.layer setCornerRadius:radious];
    [self.layer setBorderColor:color.CGColor];
    [self.layer setBorderWidth:witdth];
    self.layer.masksToBounds = YES;
}

- (void)addBorderWithWidth:(float)witdth andColor:(UIColor*)color {
    [self.layer setBorderColor:color.CGColor];
    [self.layer setBorderWidth:witdth];
    self.layer.masksToBounds = YES;
}

- (void)addShadowToView {
    self.layer.masksToBounds = NO;
    self.layer.shadowOffset = CGSizeMake(0, -5);
    //self.layer.shadowRadius = 5;
    self.layer.shadowOpacity = 0.3;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
}

@end
