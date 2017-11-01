//
//  ViewController.h
//  MiPrimeraAnalytics
//
//  Created by Jose Trinidad Fajardo Flores on 10/29/17.
//  Copyright © 2017 Jose Trinidad Fajardo Flores. All rights reserved.
//

#import <UIKit/UIKit.h>

@import Firebase;
@import GoogleSignIn;

@interface Home : UIViewController<GIDSignInUIDelegate>

- (IBAction)signInAction:(id)sender;
- (IBAction)signOutAction:(id)sender;

@end

