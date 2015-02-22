//
//  SchoolDetailViewController.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBaseViewController.h"
#import "School.h"

typedef enum : NSUInteger {
    RateCategoryPoor = 1,
    RateCategoryFine = 2,
    RateCategoryGood = 3,
    RateCategoryBetter = 4,
    RateCategoryExcellent = 5
} RateCategory;

@interface SchoolDetailViewController : UIBaseViewController

@property (nonatomic, strong) School *selectedSchool;
@property (nonatomic, weak) IBOutlet UIButton *btnRatingPoor;
@property (nonatomic, weak) IBOutlet UIButton *btnRatingFine;
@property (nonatomic, weak) IBOutlet UIButton *btnRatingGood;
@property (nonatomic, weak) IBOutlet UIButton *btnRatingBetter;
@property (nonatomic, weak) IBOutlet UIButton *btnRatingExcellent;

- (IBAction)btnRatePressed:(id)sender;
- (IBAction)btnMenuPressed:(id)sender;
- (IBAction)btnBackPressed:(id)sender;

@end
