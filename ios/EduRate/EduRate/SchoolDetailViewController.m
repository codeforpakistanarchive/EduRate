//
//  SchoolDetailViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "SchoolDetailViewController.h"
#import "RateSchoolViewController.h"
#import "City.h"

@interface SchoolDetailViewController ()

@end

@implementation SchoolDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg"]];
    
    self.lblSchoolTitle.text = self.selectedSchool.name;
    self.lblSchoolCity.text = self.selectedSchool.city.name;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRatePressed:(id)sender
{
    RateSchoolViewController *rateSchoolViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"RateSchoolViewController"];
    rateSchoolViewController.moc = self.moc;
    rateSchoolViewController.selectedSchool = self.selectedSchool;
    [self.navigationController pushViewController:rateSchoolViewController animated:YES];
}

- (IBAction)btnBackPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)btnMenuPressed:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
