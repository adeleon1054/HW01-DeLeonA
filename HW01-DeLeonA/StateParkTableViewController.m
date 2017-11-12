//
//  StateParkTableViewController.m
//  HW01-DeLeonA
//
//  Created by Asdruval De Leon on 11/8/17.
//  Copyright © 2017 Asdruval De Leon. All rights reserved.
//

#import "StateParkTableViewController.h"
#import "StateParkInfo.h"
#import "StateParkTableViewCell.h"
#import "StateParkDetailViewController.h"

@interface StateParkTableViewController ()
@property (strong, nonatomic) NSMutableArray * stateParksArray;
@end

@implementation StateParkTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    StateParkInfo * bigCypress = [[StateParkInfo alloc]init];
    bigCypress.name = @"Big Cypress National Preserve";
    bigCypress.thumbnail = [UIImage imageNamed:@"imageLocation"];
    bigCypress.location = @"Ochopee, FL";
    bigCypress.parkImage = [UIImage imageNamed:@"imageLocation"];
    bigCypress.yearOpen = @"1974";
    bigCypress.address = @"33100 Tamiami Trail East, Ochopee, Florida 34141";
    bigCypress.descriptionInfo = @"The freshwaters of the Big Cypress Swamp, essential to the health of the neighboring Everglades, support the rich marine estuaries along Florida's southwest coast. Protecting over 729,000 acres of this vast swamp, Big Cypress National Preserve contains a mixture of tropical and temperate plant communities that are home to a diversity of wildlife, including the elusive Florida panther.";
    
    StateParkInfo * biscayne = [[StateParkInfo alloc]init];
    biscayne.name = @"Biscayne National Park";
    biscayne.thumbnail = [UIImage imageNamed:@"imageLocation"];
    biscayne.location = @"Key Biscayne, FL";
    biscayne.parkImage = [UIImage imageNamed:@"imageLocation"];
    biscayne.yearOpen = @"1980";
    biscayne.address = @"9700 SW 328th Street, Homestead, FL 33033";
    biscayne.descriptionInfo = @"Within sight of downtown Miami, yet worlds away, Biscayne protects a rare combination of aquamarine waters, emerald islands, and fish-bejeweled coral reefs. Here too is evidence of 10,000 years of human history, from pirates and shipwrecks to pineapple farmers and presidents. Outdoors enthusiasts can boat, snorkel, camp, watch wildlife…or simply relax in a rocking chair gazing out over the bay.";
    
    StateParkInfo * sanMarcos = [[StateParkInfo alloc]init];
    sanMarcos.name = @"Castillo de San Marcos";
    sanMarcos.thumbnail = [UIImage imageNamed:@"imageLocation"];
    sanMarcos.location = @"St. Augustine, FL";
    sanMarcos.parkImage = [UIImage imageNamed:@"imageLocation"];
    sanMarcos.yearOpen = @"1924";
    sanMarcos.address = @"1 S Castillo Dr, St Augustine, FL 32084";
    sanMarcos.descriptionInfo = @"A monument not only of stone and mortar but of human determination and endurance, the Castillo de San Marcos symbolizes the clash between cultures which ultimately resulted in our uniquely unified nation. Still resonant with the struggles of an earlier time, these original walls provide tangible evidence of America’s grim but remarkable history.";
    
    
    _stateParksArray = [NSMutableArray arrayWithObjects:bigCypress, biscayne, sanMarcos, nil];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_stateParksArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * cellIdentifier = @"StateParkInfoCellID";
    StateParkTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    StateParkInfo * item = [_stateParksArray objectAtIndex:indexPath.row];
    cell.parkName.text = item.name;
    cell.parkLocation.text = item.location;
    cell.thumbnailImageView.image = item.thumbnail;
    
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetails"])
    {
        StateParkDetailViewController *detailVC = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow];
        StateParkInfo *item = [_stateParksArray objectAtIndex:myIndexPath.row];
        
        detailVC.currentStatePark = item;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Tabelview Color
-(void)tableView:(UITableView *)tableView willDisplayCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UIColor *myColor = [UIColor colorWithRed: 136.0/255.0 green:203.0/255.0 blue:255.0/255.0 alpha:1.0]; [self hexStringFromColor: myColor];
    NSLog(@"%@",[self hexStringFromColor: myColor]);
    
    if(indexPath.row % 2 == 0)
        cell.backgroundColor = myColor;
    else
        cell.backgroundColor = [UIColor whiteColor];
}

-(NSString *)hexStringFromColor:(UIColor *)color { const CGFloat *components = CGColorGetComponents(color.CGColor); CGFloat r = components[0]; CGFloat g = components[1]; CGFloat b = components[2];
    
    return [NSString stringWithFormat:@"#%02lX%02lX%02lX", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255)];
    
}

@end
