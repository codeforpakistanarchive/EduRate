//
//  UITableViewCellFilter.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/22/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "UITableViewCellFilter.h"

@implementation UITableViewCellFilter

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor clearColor];
    self.backgroundView = nil;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
