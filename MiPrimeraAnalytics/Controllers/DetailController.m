//
//  DetailController.m
//  MiPrimeraAnalytics
//
//  Created by Jose Trinidad Fajardo Flores on 11/1/17.
//  Copyright © 2017 Jose Trinidad Fajardo Flores. All rights reserved.
//

#import "DetailController.h"

@interface DetailController ()

@end

@implementation DetailController

@synthesize imgItem;
@synthesize image;
@synthesize lblItem;
@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    imgItem.image      = [UIImage imageNamed:self.image];
    lblItem.text      = label;
    // Do any additional setup after loading the view.
}
- (IBAction)btnBuyAction:(id)sender {
    [FIRAnalytics logEventWithName:@"BuyItem_button"
                        parameters:@{
                                     @"name": @"Google",
                                     @"full_text": @"Gmail"
                                     }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)actionBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
