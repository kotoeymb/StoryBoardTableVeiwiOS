//
//  TaskliskTableViewController.h
//  Storyboard
//
//  Created by Revo Tech on 5/11/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskliskTableViewController : UITableViewController
- (IBAction)editButtonPressed:(id)sender;

@property (nonatomic,strong)NSMutableArray *tasks;


@end
