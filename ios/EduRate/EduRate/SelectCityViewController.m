//
//  SelectCityViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "SelectCityViewController.h"
#import "SelectSchoolViewController.h"
#import "FindSchoolViewController.h"
#import "UITableViewCellCity.h"
#import "City.h"

@interface SelectCityViewController ()

@property (nonatomic, strong) NSArray *allCities;
@property (nonatomic, strong) NSArray *filteredCities;

@end

@implementation SelectCityViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.allCities = [City getAllCitiesMOC:self.moc];
    self.filteredCities = [self.allCities copy];
    
    self.lblTitle.text = self.titleStr;
    //[self.tableViewCities registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Identifier"];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOccured:)];
    tapGesture.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tapGesture];
    
    // Do any additional setup after loading the view.
}

- (void)tapOccured:(UITapGestureRecognizer*)gesture
{
    [self.searchCity resignFirstResponder];
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if (self.searchCity.text.length > 0) {
        self.filteredCities = [self.allCities filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"name contains[cd] %@", self.searchCity.text]];
    }
    else {
        self.filteredCities = self.allCities;
    }
    
    [self.tableViewCities reloadData];
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
    return [self.filteredCities count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"identifier";
    
    City *city = [self.filteredCities objectAtIndex:indexPath.row];
    
    UITableViewCellCity *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    cell.lblTitle.text = city.name;
    
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
    City *city = [self.filteredCities objectAtIndex:indexPath.row];
    
    if (self.isFindASchool) {
        FindSchoolViewController *findSchoolViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"FindSchoolViewController"];
        findSchoolViewController.moc = self.moc;
        findSchoolViewController.selectedCity = city;
        [self.navigationController pushViewController:findSchoolViewController animated:YES];
    }
    else {
        SelectSchoolViewController *selectSchoolViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectSchoolViewController"];
        selectSchoolViewController.moc = self.moc;
        selectSchoolViewController.selectedCity = city;
        [self.navigationController pushViewController:selectSchoolViewController animated:YES];
    }
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
