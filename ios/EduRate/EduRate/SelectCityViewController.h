//
//  SelectCityViewController.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBaseViewController.h"

@interface SelectCityViewController : UIBaseViewController <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>

@property (nonatomic, weak) IBOutlet UITableView *tableViewCities;
@property (nonatomic, weak) IBOutlet UISearchBar *searchCity;
@property (nonatomic, weak) IBOutlet UILabel *lblTitle;
@property (nonatomic, strong) NSManagedObjectContext *moc;
@property (nonatomic, strong) NSString *titleStr;

@property (nonatomic, assign) BOOL isFindASchool;

- (IBAction)btnMenuPressed:(id)sender;
- (IBAction)btnBackPressed:(id)sender;

@end
