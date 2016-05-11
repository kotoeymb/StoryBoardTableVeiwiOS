//
//  AddTaskTableViewController.h
//  Storyboard
//
//  Created by Revo Tech on 5/11/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TaskliskTableViewController;

@interface AddTaskTableViewController : UITableViewController

- (IBAction)cancelButtonPress:(id)sender;

- (IBAction)doneButtonPress:(id)sender;

@property (strong, nonatomic) IBOutlet UITextField *nameField;

@property (strong, nonatomic) TaskliskTableViewController *taskListViewController;

@end
