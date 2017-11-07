//
//  SaleController.m
//  MiPrimeraAnalytics
//
//  Created by Jose Trinidad Fajardo Flores on 11/5/17.
//  Copyright © 2017 Jose Trinidad Fajardo Flores. All rights reserved.
//

#import "SaleController.h"

@interface SaleController ()

@end

@implementation SaleController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnExitAction:(id)sender {
    [FIRAnalytics logEventWithName:@"Exit_button"
                        parameters:@{
                                     @"name": @"Google",
                                     @"full_text": @"Gmail"
                                     }];
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
