//
//  SelectSchoolTypeViewController.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "SelectSchoolTypeViewController.h"
#import "SelectCityViewController.h"

@interface SelectSchoolTypeViewController ()

@end

@implementation SelectSchoolTypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)btnPublicPressed:(id)sender
{
    SelectCityViewController *selectCityViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectCityViewController"];
    selectCityViewController.moc = self.moc;
    selectCityViewController.isFindASchool = NO;
    selectCityViewController.titleStr = @"Public";
    [self.navigationController pushViewController:selectCityViewController animated:YES];
}

- (IBAction)btnPrivatePressed:(id)sender
{
    SelectCityViewController *selectCityViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SelectCityViewController"];
    selectCityViewController.moc = self.moc;
    selectCityViewController.isFindASchool = NO;
    selectCityViewController.lblTitle.text = @"Private";
    [self.navigationController pushViewController:selectCityViewController animated:YES];
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
