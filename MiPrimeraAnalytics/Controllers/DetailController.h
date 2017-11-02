//
//  DetailController.h
//  MiPrimeraAnalytics
//
//  Created by Jose Trinidad Fajardo Flores on 11/1/17.
//  Copyright © 2017 Jose Trinidad Fajardo Flores. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imgItem;
@property (weak, nonatomic) IBOutlet UILabel *lblItem;
@property (nonatomic, strong) NSString * image;
@property (nonatomic, strong) NSString * label;

@end
