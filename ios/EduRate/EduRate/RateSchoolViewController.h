//
//  RateSchoolViewController.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "School.h"

@interface RateSchoolViewController : UIViewController

@property (nonatomic, strong) School *selectedSchool;
@property (nonatomic, strong) NSManagedObjectContext *moc;

@property (nonatomic, weak) IBOutlet UITableView *tableviewfacilities;

@end
