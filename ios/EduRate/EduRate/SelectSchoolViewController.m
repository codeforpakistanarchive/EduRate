//
//  SelectSchoolViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "SelectSchoolViewController.h"
#import "SchoolDetailViewController.h"
#import "UITableViewCellSchool.h"
#import "School.h"

@interface SelectSchoolViewController ()

@property (nonatomic, strong) NSArray *allSchoolsForCity;
@property (nonatomic, strong) NSArray *filteredSchoolsForCity;

@end

@implementation SelectSchoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lblTitle.text = self.selectedCity.name;
    
    self.allSchoolsForCity = [self.selectedCity.schools allObjects];
    self.filteredSchoolsForCity = [self.allSchoolsForCity copy];
    
    //[self.tableViewSchools registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Identifier"];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOccured:)];
    tapGesture.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapGesture];
    
    // Do any additional setup after loading the view.
}

- (void)tapOccured:(UITapGestureRecognizer*)gesture
{
    [self.searchSchool resignFirstResponder];
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if (searchBar.text.length > 0) {
        self.filteredSchoolsForCity = [self.allSchoolsForCity filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"name contains[cd] %@", searchBar.text]];
    }
    else {
        self.filteredSchoolsForCity = self.allSchoolsForCity;
    }
    
    [self.tableViewSchools reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    return [self.filteredSchoolsForCity count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"identifier";
    
    School *school = [self.filteredSchoolsForCity objectAtIndex:indexPath.row];
    
    UITableViewCellSchool *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.lblTitle.text = school.name;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    School *school = [self.filteredSchoolsForCity objectAtIndex:indexPath.row];
    
    SchoolDetailViewController *schoolDetailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SchoolDetailViewController"];
    schoolDetailViewController.moc = self.moc;
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
