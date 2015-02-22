//
//  MenuViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "MenuViewController.h"
#import "SelectSchoolTypeViewController.h"
#import "FindSchoolViewController.h"
#import "SelectCityViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnRateASchool:(id)sender
{
    SelectSchoolTypeViewController *selectSchoolTypeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectSchoolTypeViewController"];
    selectSchoolTypeViewController.moc = self.moc;
    [self.navigationController pushViewController:selectSchoolTypeViewController animated:YES];
}

- (IBAction)btnFindASchool:(id)sender
{
    SelectCityViewController *selectCityViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectCityViewController"];
    selectCityViewController.moc = self.moc;
    selectCityViewController.isFindASchool = YES;
    selectCityViewController.titleStr = @"Select a city";
    [self.navigationController pushViewController:selectCityViewController animated:YES];
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
