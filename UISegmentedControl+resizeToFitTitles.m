//
//  UISegmentedControl+resizeToFitTitles.m
//  UniversitySchedule
//
//  Created by Grigory Avdyushin on 2/12/13.
//  Copyright (c) 2013 Grigory Avdyushin. All rights reserved.
//

#import "UISegmentedControl+resizeToFitTitles.h"

@implementation UISegmentedControl (resizeToFitTitles)

- (void)resizeToFitTitles
{
    
    // Padding
    const CGFloat padding = 10;
    UIFont *font;
    
    // First segment
    UIView *segmentView = self.subviews[0];
    
    // Find font
    for (UILabel *label in segmentView.subviews) {
        if ([label isKindOfClass:[UILabel class]]) {
            font = label.font;
        }
    }
    
    // Set new width with padding
    for (int i = 0; i < self.subviews.count; ++i) {
        
        CGFloat w = [[self titleForSegmentAtIndex:i]
                     sizeWithFont:font].width + (padding * 2);
        
        [self setWidth:w forSegmentAtIndex:i];
        
    }
    
    // Finally we must update width of whole control
    [self sizeToFit];
    
}

@end
