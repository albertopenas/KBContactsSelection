//
//  UIView+AddRoundedCorners.h
//  DigitalGymIOS
//
//  Created by David Bayón on 07/07/14.
//  Copyright (c) 2014 david bayon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (AddRoundedCorners)

- (void)addRoundedCornersWithRadious:(int)radious;
- (void)addRoundedBorderWithRadious:(int)radious andColor:(UIColor*)color;
- (void)addRoundedBorderWithRadious:(int)radious width:(float)witdth andColor:(UIColor*)color;
- (void)addBorderWithWidth:(float)witdth andColor:(UIColor*)color;
- (void)addShadowToView;

@end
