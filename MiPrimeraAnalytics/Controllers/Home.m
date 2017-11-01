//
//  ViewController.m
//  MiPrimeraAnalytics
//
//  Created by Jose Trinidad Fajardo Flores on 10/29/17.
//  Copyright © 2017 Jose Trinidad Fajardo Flores. All rights reserved.
//

#import "Home.h"

@interface Home ()

@end

@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)signInAction:(id)sender {
    [FIRAnalytics logEventWithName:@"Signin_button"
                        parameters:@{
                                     @"name": @"Google",
                                     @"full_text": @"Gmail"
                                     }];
    
    [GIDSignIn sharedInstance].uiDelegate = self;
    [[GIDSignIn sharedInstance] signIn];
}
- (IBAction)signOutAction:(id)sender {
    [[GIDSignIn sharedInstance] signOut];
}


@end
