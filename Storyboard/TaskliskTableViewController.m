//
//  TaskliskTableViewController.m
//  Storyboard
//
//  Created by Revo Tech on 5/11/16.
//  Copyright © 2016 Revo Tech. All rights reserved.
//

#import "TaskliskTableViewController.h"
#import "Tasky.h"
#import "AddTaskTableViewController.h"

@interface TaskliskTableViewController ()

@end

@implementation TaskliskTableViewController

@synthesize  tasks = _tasks;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
     self.tasks= [[NSMutableArray alloc]init];
    Tasky *task = [[Tasky alloc] initWithName:@"MyFirst task" done:NO];
    
    [self.tasks addObject:task];
    
    Tasky *doneTask = [[Tasky alloc] initWithName:@"MyFirst done task" done:YES];
    
    [self.tasks addObject:doneTask];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if ([segue.identifier isEqualToString:@"AddTaskSegue"]) {
        
        UINavigationController *navCon = segue.destinationViewController;
        
        AddTaskTableViewController *addTaskViewController = [navCon.viewControllers objectAtIndex:0];
        addTaskViewController.taskListViewController = self
        ;
    }

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
// #warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
// #warning Incomplete implementation, return the number of rows
    return self.tasks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *NotDoneCellIdentifier = @"NotDoneTaskCell";
    static NSString *DoneCellIdentifier = @"DoneTaskCell";
    
    Tasky *currentTask = [self.tasks objectAtIndex:indexPath.row];
    
    NSString *cellIdentifier = currentTask.done ? DoneCellIdentifier : NotDoneCellIdentifier;
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    // Configure the cell...
    // TO do set the task
    
    cell.textLabel.text = currentTask.name;
   
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
