//
//  FilteredSchoolsViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/22/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "FilteredSchoolsViewController.h"
#import "UITableViewCellRatedSchools.h"
#import "Facility_Rate.h"
#import "School.h"

@interface SchoolRating : NSObject

@property (nonatomic, strong) School *school;
@property (nonatomic, strong) NSNumber *rating;

@end

@implementation SchoolRating


@end

@interface FilteredSchoolsViewController ()

@property (nonatomic, strong) NSMutableArray *rating;

@end

@implementation FilteredSchoolsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lblTitle.text = self.selectedCity.name;
    
    NSArray *allSchoolsForCity = [School getAllSchoolsForCity:self.selectedCity MOC:self.moc];
    self.rating = [NSMutableArray new
                              ];
    for (School *school in allSchoolsForCity) {
        NSInteger rate = 0;
        for (Facility *facility in self.selectedCriteria) {
            NSArray *facilityratings = [Facility_Rate getAllFacilityRateForSchool:school facility:facility MOC:self.moc];
            rate += [[facilityratings valueForKeyPath:@"@sum.rating"] integerValue];
            
        }
        SchoolRating *schoolRating = [[SchoolRating alloc] init];
        schoolRating.school = school;
        schoolRating.rating = [NSNumber numberWithInteger:rate];
        [self.rating addObject:schoolRating];
    }
    if ([self.rating count] > 10) {
        [self.rating removeObjectsInRange:NSMakeRange(10, [self.rating count] - 10)];
    }

    // Do any additional setup after loading the view.
}

- (IBAction)btnBackPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)btnMenuPressed:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableView Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.rating count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"identifier";
    
    SchoolRating *schoolRating = [self.rating objectAtIndex:indexPath.row];
    
    UITableViewCellRatedSchools *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.lblTitle.text = schoolRating.school.name;
    cell.lblRating.text = [NSString stringWithFormat:@"%@ / 5", schoolRating.rating];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 35;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
