//
//  KBRadioButton.m
//  KBContactsSelectionExample
//
//  Created by Kamil Burczyk on 13.12.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import "KBRadioButton.h"
#import "KBContactsSelectionViewController.h"

@implementation KBRadioButton

- (void)awakeFromNib
{
    [self addTarget:self action:@selector(redraw) forControlEvents:UIControlEventAllEvents];
}

- (void)redraw
{
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(ctx, [UIColor lightGrayColor].CGColor);
    
    if (self.highlighted) {
        //CGContextSetFillColorWithColor(ctx, [UIColor lightGrayColor].CGColor);
    } else if (self.selected) {
        
        UIImage *image = [UIImage imageNamed:@"privacy_tick.png"];
        CGRect imageRect = CGRectMake(image.size.width/4.0f , image.size.height/4.0f, image.size.width/2.0f, image.size.height/2.0f);
        
        CGContextTranslateCTM(ctx, 0, image.size.height);
        CGContextScaleCTM(ctx, 1.0, -1.0);
        
        CGContextDrawImage(ctx, imageRect, image.CGImage);
        
        //CGContextSetFillColorWithColor(ctx, _innerCircleFillColor.CGColor);
    } else {
        //CGContextSetFillColorWithColor(ctx, [UIColor whiteColor].CGColor);
    }
    /*
    CGContextStrokeEllipseInRect(ctx, CGRectInset(self.bounds, 2, 2));
    CGContextFillEllipseInRect(ctx, CGRectInset(self.bounds, 5, 5));
     */
}


@end
