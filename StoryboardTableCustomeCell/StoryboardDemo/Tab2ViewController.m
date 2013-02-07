//
//  Tab2ViewController.m
//  StoryboardDemo
//
//  Created by Pawan Dhamane on 07/02/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import "Tab2ViewController.h"
#import "Tab2DetailViewController.h"
@interface Tab2ViewController ()

@end

@implementation Tab2ViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    myArray = [NSMutableArray arrayWithObjects:
               @"Schindler's List",
               @"The Godfather",
               @"Million Dollar Baby",
              @"Sarfarosh",
              @"Rang De Basanti ",
              @"Kal Ho Naa Ho",
              @"Chak De! India",
              @"Troy",
              @"A Beautiful Mind",
              @"Agneepath",
              @"Rock On!!",
              nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [myArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // A cell identifier which matches our identifier in IB
    static NSString *CellIdentifier = @"CellIdentifier";
    
    // Create or reuse a cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Get the cell label using its tag and set it
    UILabel *cellLabel = (UILabel *)[cell viewWithTag:1];
    [cellLabel setText:[myArray objectAtIndex:indexPath.row]];
    
    // get the cell imageview using its tag and set it
    UIImageView *cellImage = (UIImageView *)[cell viewWithTag:2];
    [cellImage setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexPath.row]]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure we're referring to the correct segue
    if ([[segue identifier] isEqualToString:@"ShowSelectedMovie"]) {
        
        // Get reference to the destination view controller
        Tab2DetailViewController *vc = [segue destinationViewController];
        
        // get the selected index
        NSInteger selectedIndex = [[self.tableView indexPathForSelectedRow] row];
        
        // Pass the name and index of our film
        [vc setSelectedItem:[NSString stringWithFormat:@"%@", [myArray objectAtIndex:selectedIndex]]];
        [vc setSelectedIndex:selectedIndex];
    }
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
