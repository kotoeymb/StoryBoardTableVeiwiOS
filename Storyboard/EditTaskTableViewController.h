//
//  EditTaskTableViewController.h
//  Storyboard
//
//  Created by Revo Tech on 5/11/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Tasky;

@interface EditTaskTableViewController : UITableViewController
@property (nonatomic,strong) IBOutlet UITextField *nameField;

@property (nonatomic,strong) IBOutlet UISwitch *doneSwitch;
@property (nonatomic,strong) Tasky *task; 


- (IBAction)taskDataChanged:(id)sender;

@end
