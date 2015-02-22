//
//  SelectSchoolTypeViewController.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBaseViewController.h"

@interface SelectSchoolTypeViewController : UIBaseViewController

@property (nonatomic, strong) NSManagedObjectContext *moc;

- (IBAction)btnPublicPressed:(id)sender;
- (IBAction)btnPrivatePressed:(id)sender;
- (IBAction)btnMenuPressed:(id)sender;
- (IBAction)btnBackPressed:(id)sender;

@end
