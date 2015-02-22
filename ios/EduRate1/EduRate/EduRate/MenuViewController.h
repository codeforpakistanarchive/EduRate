//
//  MenuViewController.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController

@property (nonatomic, strong) NSManagedObjectContext *moc;

- (IBAction)btnBackPressed:(id)sender;
- (IBAction)btnMenuPressed:(id)sender;
- (IBAction)btnRateASchool:(id)sender;
- (IBAction)btnFindASchool:(id)sender;

@end
