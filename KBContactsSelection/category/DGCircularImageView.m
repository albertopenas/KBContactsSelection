//
//  DGCircularImageView.m
//  DigitalGymIOS
//
//  Created by david bayon on 05/06/14.
//  Copyright (c) 2014 david bayon. All rights reserved.
//

#import "DGCircularImageView.h"
#import "UIView+AddRoundedCorners.h"

@implementation DGCircularImageView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)awakeFromNib {
    [self addRoundedCornersWithRadious:self.frame.size.width/2];
}


@end
