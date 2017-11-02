//
//  ListController.m
//  MiPrimeraAnalytics
//
//  Created by Jose Trinidad Fajardo Flores on 10/31/17.
//  Copyright © 2017 Jose Trinidad Fajardo Flores. All rights reserved.
//

#import "ListController.h"
#import "DetailController.h"
#import "cellMainTable.h"

@interface ListController ()

@property NSMutableArray *itemNames;

@property NSMutableArray *itemImages;

@property NSString * selectedImg;

@property NSString * selectedItem;

@end

@implementation ListController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    self.itemNames  = [[NSMutableArray alloc] initWithObjects: @"Zapatos", @"Chamarra", @"Playstation 4", @"Mochila deportiva", nil];
    
    self.itemImages = [[NSMutableArray alloc] initWithObjects: @"zapatos.jpg", @"chamarra.jpg", @"ps4.jpg", @"mochila.jpg", nil];
}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellMainTable *cell = (cellMainTable *)[tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellMainTable" bundle:nil] forCellReuseIdentifier:@"cellMainTable"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellMainTable"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.itemNames[indexPath.row];
    cell.imgItem.image      = [UIImage imageNamed:self.itemImages[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.selectedImg =  self.itemImages[indexPath.row];
    self.selectedItem = self.itemNames[indexPath.row];
    [self performSegueWithIdentifier:@"segueID" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailController *detailController = segue.destinationViewController;
    detailController.image = self.selectedImg;
    detailController.label = self.selectedItem;
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
