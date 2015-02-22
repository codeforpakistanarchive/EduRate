//
//  SelectSchoolViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "SelectSchoolViewController.h"
#import "SchoolDetailViewController.h"
#import "School.h"

@interface SelectSchoolViewController ()

@property (nonatomic, strong) NSArray *allSchoolsForCity;

@end

@implementation SelectSchoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.allSchoolsForCity = [self.selectedCity.schools allObjects];
    
    [self.tableViewSchools registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Identifier"];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableView Delegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.allSchoolsForCity count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"Identifier";
    
    School *school = [self.allSchoolsForCity objectAtIndex:indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.textLabel.text = school.name;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    School *school = [self.allSchoolsForCity objectAtIndex:indexPath.row];
    
    SchoolDetailViewController *schoolDetailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SchoolDetailViewController"];
    schoolDetailViewController.selectedSchool = school;
    [self.navigationController pushViewController:schoolDetailViewController animated:YES];
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
