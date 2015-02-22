//
//  SelectSchoolViewController.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBaseViewController.h"
#import "City.h"

@interface SelectSchoolViewController : UIBaseViewController

@property (nonatomic, weak) IBOutlet UITableView *tableViewSchools;
@property (nonatomic, weak) IBOutlet UISearchBar *searchSchool;
@property (nonatomic, strong) NSManagedObjectContext *moc;
@property (nonatomic, strong) City *selectedCity;

@end
