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

@property (strong, nonatomic) IBOutlet UITextField *fatherNameField;
@property (strong, nonatomic) IBOutlet UITextField *addressField;
@property (strong, nonatomic) IBOutlet UITextField *noteField;
@property (nonatomic,strong) IBOutlet UISwitch *doneSwitch;
@property (nonatomic,strong) Tasky *task; 


- (IBAction)taskDataChanged:(id)sender;
// - (IBAction)doneAction:(id)sender;


@end
