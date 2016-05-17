//
//  AddTaskTableViewController.m
//  Storyboard
//
//  Created by Revo Tech on 5/11/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import "AddTaskTableViewController.h"
#import "TaskliskTableViewController.h"
#import "Tasky.h"

@interface AddTaskTableViewController ()

@end

@implementation AddTaskTableViewController

@synthesize nameField = _nameField;
@synthesize fatherName = _fatherName;
@synthesize addressField = _addressField;
@synthesize noteField = _noteField;


@synthesize taskListViewController = _taskListViewController;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma <#arguments#>
- (void)cancelButtonPress:(id)sender {
 [self dismissModalViewControllerAnimated:YES];
    
    //  [self d];
}

- (void)doneButtonPress:(id)sender {
    Tasky *newTask = [[Tasky alloc]initWithName:self.nameField.text fathername:self.fatherName.text address:self.addressField.text note:self.noteField.text done:NO];
    
    // fathername:self.fatherName.text address:self.addressField.text note:self.noteField.text
    
    // [self.taskListViewController.tasks addObject:newTask];
    [self.taskListViewController.tasks addObject:newTask];
    
    [self dismissModalViewControllerAnimated:YES];
    
   // [self.taskListViewController.tableView reloadData];
    
}


@end
