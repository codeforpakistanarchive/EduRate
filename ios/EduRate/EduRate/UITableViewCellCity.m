//
//  UITableViewCellCity.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/22/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "UITableViewCellCity.h"

@implementation UITableViewCellCity

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor whiteColor];
    self.backgroundView = nil;
    self.contentView.layer.borderWidth = 1;
    self.contentView.layer.borderColor = (__bridge CGColorRef)([UIColor darkGrayColor]);
}

@end
