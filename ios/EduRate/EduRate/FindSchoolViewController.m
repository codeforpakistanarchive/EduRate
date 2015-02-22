//
//  FindSchoolViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/22/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "FindSchoolViewController.h"
#import "UITableViewCellFilter.h"
#import "FilteredSchoolsViewController.h"
#import "Facility.h"

@interface FindSchoolViewController ()

@property (nonatomic, strong) NSArray *allSchoolFacilities;
@property (nonatomic, strong) NSMutableArray *selectedFacilities;

@end

@implementation FindSchoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lblTitle.text = self.selectedCity.name;
    self.allSchoolFacilities = [Facility getAllFacilitiesMOC:self.moc];
    self.selectedFacilities = [NSMutableArray new];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnFindSchoolPressed:(id)sender
{
    if ([self.selectedFacilities count] > 0) {
        FilteredSchoolsViewController *filteredSchoolsViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FilteredSchoolsViewController"];
        filteredSchoolsViewController.selectedCriteria = self.selectedFacilities;
        filteredSchoolsViewController.moc =self.moc;
        filteredSchoolsViewController.selectedCity = self.selectedCity;
        [self.navigationController pushViewController:filteredSchoolsViewController animated:YES];
    }
    else {
        [[[UIAlertView alloc] initWithTitle:@"" message:@"Please select atleast one criteria" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    }
}

- (IBAction)btnBackPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)btnMenuPressed:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
    
    UITableViewCellFilter *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    cell.accessoryType = UITableViewCellAccessoryNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.lblTitle.text = facility.name;
    [cell.btnCheck addTarget:self action:@selector(btnCheckPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

- (void)btnCheckPressed:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    UIView *view = [btn superview];
    if (([view class] != [UITableViewCell class]) && ([view class] != [UITableViewCellFilter class])) {
        view = [view superview];
    }
    
    UITableViewCellFilter *cell = (UITableViewCellFilter*)view;
    NSIndexPath *indexPath = [self.tableviewFilters indexPathForCell:cell];
    
    if (![self.selectedFacilities containsObject:[self.allSchoolFacilities objectAtIndex:indexPath.row]]) {
        [btn setImage:[UIImage imageNamed:@"checkedBox"] forState:UIControlStateNormal];
        [self.selectedFacilities addObject:[self.allSchoolFacilities objectAtIndex:indexPath.row]];
    }
    else {
        [btn setImage:[UIImage imageNamed:@"emptyCheckBox"] forState:UIControlStateNormal];
        [self.selectedFacilities removeObject:[self.allSchoolFacilities objectAtIndex:indexPath.row]];
    }
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
