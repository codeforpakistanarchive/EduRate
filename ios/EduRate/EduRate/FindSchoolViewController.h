//
//  FindSchoolViewController.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/22/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface FindSchoolViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSManagedObjectContext *moc;
@property (nonatomic, strong) IBOutlet UITableView *tableviewFilters;
@property (nonatomic, weak) IBOutlet UILabel *lblTitle;
@property (nonatomic, strong) City *selectedCity;

- (IBAction)btnMenuPressed:(id)sender;
- (IBAction)btnBackPressed:(id)sender;
- (IBAction)btnFindSchoolPressed:(id)sender;

@end
