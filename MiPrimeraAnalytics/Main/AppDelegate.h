//
//  AppDelegate.h
//  MiPrimeraAnalytics
//
//  Created by Jose Trinidad Fajardo Flores on 10/29/17.
//  Copyright © 2017 Jose Trinidad Fajardo Flores. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@import Firebase;
@import GoogleSignIn;

@interface AppDelegate : UIResponder<UIApplicationDelegate, GIDSignInDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

