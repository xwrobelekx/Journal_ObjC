//
//  KWEEntryListTableViewController.m
//  Journal_ObjC
//
//  Created by Kamil Wrobel on 9/10/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

#import "KWEEntryListTableViewController.h"
#import "KWEEntryController.h"
#import "KWEEntryModel.h"
#import "KWEEntryViewController.h"


@interface KWEEntryListTableViewController ()



@end

@implementation KWEEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [[[KWEEntryController shared] entriesArray] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    //let entry : KWEEntryModel = KWEEntryModelController.shared.entriesArray[indexPath.row]
    KWEEntryModel *entry = [KWEEntryController shared].entriesArray[indexPath.row];
    [cell textLabel].text = [entry entryTitle];
    return cell;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [[KWEEntryController shared].entriesArray removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        
    }
}




#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier  isEqual: @"showDetailSegue"]) {
        KWEEntryViewController *destinationVC = segue.destinationViewController;
        NSInteger *selectedRow = [[self tableView] indexPathForSelectedRow].row;
        KWEEntryModel *entry = [[KWEEntryController shared].entriesArray objectAtIndex:selectedRow];
        destinationVC.entryPad = entry;
        
    }
}


@end
