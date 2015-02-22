//
//  RateSchoolViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "RateSchoolViewController.h"
#import "UITableViewCellRate.h"
#import "Facility_Rate.h"
#import "Facility.h"

@interface RateSchoolViewController ()

@property (nonatomic, strong) NSArray *allSchoolFacilities;
@property (nonatomic, strong) NSMutableArray *allSchoolFacilitiesRatings;

@end

@implementation RateSchoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.allSchoolFacilitiesRatings = [NSMutableArray new];
    self.allSchoolFacilities = [Facility getAllFacilitiesMOC:self.moc];
    
    for (Facility *facility in self.allSchoolFacilities) {
        NSArray *facilityRatings = [Facility_Rate getAllFacilityRateForSchool:self.selectedSchool facility:facility MOC:self.moc];
        //NSNumber *rating = [facilityRatings valueForKeyPath:@"@sum.rating"];
        [self.allSchoolFacilitiesRatings addObject:[NSNumber numberWithInt:facilityRatings.count]];
        
    }
    
    [self.tableviewfacilities registerNib:[UINib nibWithNibName:@"UITableViewCellRate" bundle:nil] forCellReuseIdentifier:@"identifier"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableView Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.allSchoolFacilities count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"identifier";
    
    Facility *facility = [self.allSchoolFacilities objectAtIndex:indexPath.row];
    
    UITableViewCellRate *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.lblTitle.text = facility.name;
    cell.lblRating.text = [NSString stringWithFormat:@"%@Reviews", [self.allSchoolFacilitiesRatings objectAtIndex:indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 66;
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
