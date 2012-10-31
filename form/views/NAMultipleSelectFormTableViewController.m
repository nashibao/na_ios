//
//  NAMultipleSelectFormTableViewController.m
//  SK3
//
//  Created by nashibao on 2012/10/31.
//  Copyright (c) 2012年 s-cubism. All rights reserved.
//

#import "NAMultipleSelectFormTableViewController.h"

@interface NAMultipleSelectFormTableViewController ()

@end

@implementation NAMultipleSelectFormTableViewController

#pragma mark - Table view data source

- (void)initialize{
    [super initialize];
    self.cellStyle = UITableViewCellStyleDefault;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if(self.formValue){
        [self.navigationItem setTitle:self.formValue.label];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[self.formValue selects] count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [_formValue toggleIndexPath:indexPath];
    [super tableView:tableView didSelectRowAtIndexPath:indexPath];
}

- (void)updateCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath{
    [cell.textLabel setText:(_formValue.selects[indexPath.row][_formValue.label_key])];
    if([_formValue hasIndexPath:indexPath]){
        [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
    }else{
        [cell setAccessoryType:UITableViewCellAccessoryNone];
    }
}

@end
