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
    
    StateParkInfo *bigCypress = [[StateParkInfo alloc]init];
    bigCypress.name = @"Big Cypress National Preserve";
    bigCypress.thumbnail = [UIImage imageNamed:@"bigcypress_tn"];
    bigCypress.location = @"Ochopee, FL";
    bigCypress.parkImage = [UIImage imageNamed:@"bigcypress_lg"];
    bigCypress.yearOpen = @"Established in 1974";
    bigCypress.address = @"Address: \n33100 Tamiami Trail East, Ochopee, Florida 34141";
    bigCypress.descriptionInfo = @"Description: \nThe freshwaters of the Big Cypress Swamp, essential to the health of the neighboring Everglades, support the rich marine estuaries along Florida's southwest coast. Protecting over 729,000 acres of this vast swamp, Big Cypress National Preserve contains a mixture of tropical and temperate plant communities that are home to a diversity of wildlife, including the elusive Florida panther.";
    
    StateParkInfo *biscayne = [[StateParkInfo alloc]init];
    biscayne.name = @"Biscayne National Park";
    biscayne.thumbnail = [UIImage imageNamed:@"biscayne_tn"];
    biscayne.location = @"Key Biscayne, FL";
    biscayne.parkImage = [UIImage imageNamed:@"biscayne_lg"];
    biscayne.yearOpen = @"Established in 1980";
    biscayne.address = @"Address: \n9700 SW 328th Street, Homestead, FL 33033";
    biscayne.descriptionInfo = @"Description: \nWithin sight of downtown Miami, yet worlds away, Biscayne protects a rare combination of aquamarine waters, emerald islands, and fish-bejeweled coral reefs. Here too is evidence of 10,000 years of human history, from pirates and shipwrecks to pineapple farmers and presidents. Outdoors enthusiasts can boat, snorkel, camp, watch wildlife…or simply relax in a rocking chair gazing out over the bay.";
    
    StateParkInfo *sanMarcos = [[StateParkInfo alloc]init];
    sanMarcos.name = @"Castillo de San Marcos";
    sanMarcos.thumbnail = [UIImage imageNamed:@"sanmarcos_tn"];
    sanMarcos.location = @"St. Augustine, FL";
    sanMarcos.parkImage = [UIImage imageNamed:@"sanmarcos_lg"];
    sanMarcos.yearOpen = @"Established in 1924";
    sanMarcos.address = @"Address: \n1 S Castillo Dr, St Augustine, FL 32084";
    sanMarcos.descriptionInfo = @"Description: \nA monument not only of stone and mortar but of human determination and endurance, the Castillo de San Marcos symbolizes the clash between cultures which ultimately resulted in our uniquely unified nation. Still resonant with the struggles of an earlier time, these original walls provide tangible evidence of America’s grim but remarkable history.";
    
    StateParkInfo *canaveral = [[StateParkInfo alloc]init];
    canaveral.name = @"Canaveral National Seashore";
    canaveral.thumbnail = [UIImage imageNamed:@"canaveral_tn"];
    canaveral.location = @"Titusville, FL";
    canaveral.parkImage = [UIImage imageNamed:@"canaveral_lg"];
    canaveral.yearOpen = @"Established in 1975";
    canaveral.address = @"Address: \nS Washington Ave, Titusville, FL 32796";
    canaveral.descriptionInfo = @"Description: \n Since ancient times, this barrier island has provided sanctuary to both people and wildlife. Many threatened and endangered species find refuge here, including sea turtles who nest on its shores. Like first natives and early settlers, you too can find tranquility. Stroll down a wooded trail. Reflect on a pristine undeveloped shoreline - the way things used to be.";
    
    StateParkInfo *deSoto = [[StateParkInfo alloc]init];
    deSoto.name = @"De Soto National Memorial";
    deSoto.thumbnail = [UIImage imageNamed:@"desoto_tn"];
    deSoto.location = @"Bradenton, FL";
    deSoto.parkImage = [UIImage imageNamed:@"desoto_lg"];
    deSoto.yearOpen = @"Established in 1966";
    deSoto.address = @"Address: \n8300 Desoto Memorial Hwy, Bradenton, FL 34209";
    deSoto.descriptionInfo = @"Description: \nIn May 1539, Conquistador Hernando de Soto’s army of soldiers, hired mercenaries, craftsmen and clergy made landfall in Tampa Bay. They were met with fierce resistance of indigenous people protecting their homelands. De Soto’s quest for glory and gold would be a four year, four thousand mile odyssey of intrigue, warfare, disease, and discovery that would form the history of the United States.";
    
    
    StateParkInfo *dryTortugas = [[StateParkInfo alloc]init];
    dryTortugas.name = @"Dry Tortugas National Park";
    dryTortugas.thumbnail = [UIImage imageNamed:@"dryTortugas_tn"];
    dryTortugas.location = @"Key West, FL";
    dryTortugas.parkImage = [UIImage imageNamed:@"dryTortugas_lg"];
    dryTortugas.yearOpen = @"Established in 1935";
    dryTortugas.address = @"Address: \nMonroe County, Florida";
    dryTortugas.descriptionInfo = @"Description: \nAlmost 70 miles (113 km) west of Key West lies the remote Dry Tortugas National Park. The 100-square mile park is mostly open water with seven small islands. Accessible only by boat or seaplane, the park is known the world over as the home of magnificent Fort Jefferson, picturesque blue waters, superlative coral reefs and marine life, and the vast assortment of bird life that frequent the area.";
    
    StateParkInfo *everglades = [[StateParkInfo alloc]init];
    everglades.name = @"Everglades National Park";
    everglades.thumbnail = [UIImage imageNamed:@"everglades_tn"];
    everglades.location = @"Homestead, FL";
    everglades.parkImage = [UIImage imageNamed:@"everglades_lg"];
    everglades.yearOpen = @"Established in May 30, 1934";
    everglades.address = @"Address: \n40001 State Road 9336 Homestead, FL 33034";
    everglades.descriptionInfo = @"Everglades National Park protects an unparalleled landscape that provides important habitat for numerous rare and endangered species like the manatee, American crocodile, and the elusive Florida panther. An international treasure as well - a World Heritage Site, International Biosphere Reserve, a Wetland of International Importance, and a specially protected area under the Cartagena Treaty.";
    
    StateParkInfo *fortCaroline = [[StateParkInfo alloc]init];
    fortCaroline.name = @"Fort Caroline National Park";
    fortCaroline.thumbnail = [UIImage imageNamed:@"fortCaroline_tn"];
    fortCaroline.location = @"Jacksonville, FL";
    fortCaroline.parkImage = [UIImage imageNamed:@"fortCaroline_lg"];
    fortCaroline.yearOpen = @"Established in January 16, 1953";
    fortCaroline.address = @"Address: \n12713 Fort Caroline Road Jacksonville, FL 32225";
    fortCaroline.descriptionInfo = @"Description: \nAt the settlement of la Caroline, French settlers struggled for survival in a new world.  Many sought religious freedom in a new land, while others were soldiers or tradesmen starting a new life.  The climactic battles fought here between the French and Spanish marked the first time that European nations fought for control of lands in what is now the United States.";
    
    StateParkInfo *fortMatanzas = [[StateParkInfo alloc]init];
    fortMatanzas.name = @"Fort Matanzas National Park";
    fortMatanzas.thumbnail = [UIImage imageNamed:@"fortMatanzas_tn"];
    fortMatanzas.location = @"St. Augustine, FL";
    fortMatanzas.parkImage = [UIImage imageNamed:@"fortMatanzas_lg"];
    fortMatanzas.yearOpen = @"Established in October 15, 1924";
    fortMatanzas.address = @"Address: \n8635 A1A S, St Augustine, FL 32080";
    fortMatanzas.descriptionInfo = @"Description: \nCoastal Florida was a major field of conflict as European nations fought for control in the New World. As part of this struggle, Fort Matanzas guarded St. Augustine’s southern river approach. The colonial wars are over, but the monument is still protecting—not just the historic fort, but also the wild barrier island and the plants and animals who survive there amidst a sea of modern development.";
    
    StateParkInfo *gulfIslands = [[StateParkInfo alloc]init];
    gulfIslands.name = @"Gulf Islands National Seashore";
    gulfIslands.thumbnail = [UIImage imageNamed:@"gulfIslands_tn"];
    gulfIslands.location = @"Gulf Breeze, FL";
    gulfIslands.parkImage = [UIImage imageNamed:@"gulfIslands_lg"];
    gulfIslands.yearOpen = @"Established in January 8, 1971";
    gulfIslands.address = @"Address: \n1801 Gulf Breeze Parkway Gulf Breeze, FL 32563";
    gulfIslands.descriptionInfo = @"Description: \nWhat is it that entices people to the sea? Poet John Masefield wrote, “I must go down to the seas again, for the call of the running tide is a wild call and a clear call that may not be denied.” Millions of visitors are drawn to the islands in the northern Gulf of Mexico for the white sandy beaches, the aquamarine waters, a boat ride, a camping spot, a tour of an old fort, or a place to fish.";
    
    StateParkInfo *timucuan = [[StateParkInfo alloc]init];
    timucuan.name = @"Timucuan Ecological and Historic Preserve";
    timucuan.thumbnail = [UIImage imageNamed:@"timucuan_tn"];
    timucuan.location = @"Jacksonville, FL";
    timucuan.parkImage = [UIImage imageNamed:@"timucuan_lg"];
    timucuan.yearOpen = @"Established in February 16, 1988";
    timucuan.address = @"Address: \n12713 Ft Caroline Rd, Jacksonville, FL 32225";
    timucuan.descriptionInfo = @"Description: \nVisit one of the last unspoiled coastal wetlands on the Atlantic Coast. Discover 6,000 years of human history and experience the beauty of salt marshes, coastal dunes, and hardwood hammocks. The Timucuan Preserve includes Fort Caroline and Kingsley Plantation.";
    
    StateParkInfo *stAndrews = [[StateParkInfo alloc]init];
    stAndrews.name = @"St. Andrews State Park";
    stAndrews.thumbnail = [UIImage imageNamed:@"stAndrews_tn"];
    stAndrews.location = @"Panama City Beach, FL";
    stAndrews.parkImage = [UIImage imageNamed:@"stAndrews_lg"];
    stAndrews.yearOpen = @"Established in April 18, 1951";
    stAndrews.address = @"Address: \n4607 State Park Ln, Panama City Beach, FL 32408";
    stAndrews.descriptionInfo = @"Description: \nWell-known for its sugar white sands and emerald green waters, this former military reservation has over one-and-a-half miles of beaches on the Gulf of Mexico and Grand Lagoon. Water sports enthusiasts can enjoy swimming, snorkeling, scuba diving, kayaking and canoeing.";
    
    StateParkInfo *osceola = [[StateParkInfo alloc]init];
    osceola.name = @"Osceola National Forest";
    osceola.thumbnail = [UIImage imageNamed:@"osceola_tn"];
    osceola.location = @"Sanderson, FL";
    osceola.parkImage = [UIImage imageNamed:@"osceola_lg"];
    osceola.yearOpen = @"Established in July 10, 1931";
    osceola.address = @"Address: \n24874 US-90, Sanderson, FL 32087";
    osceola.descriptionInfo = @"Description: \nThe Osceola National Forest is a natural gem. These forested woodlands and swamps provide many opportunities for a wide range of visitor experiences such as camping, hiking, swimming, fishing, hunting, riding horse trails, wildlife viewing and many more.";
    
    _stateParksArray = [NSMutableArray arrayWithObjects:bigCypress, biscayne, sanMarcos, canaveral, deSoto, dryTortugas, everglades, fortCaroline, fortMatanzas, gulfIslands, timucuan, stAndrews, osceola, nil];
    
    NSLog(@"array:%@", _stateParksArray);

    
    
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
    cell.parkName.font = [UIFont fontWithName:@"Verdana-Bold" size:17];
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
        
        detailVC.titleName = item.name;
        
        detailVC.currentStatePark = item;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Tabelview Color
-(void)tableView:(UITableView *)tableView willDisplayCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    UIColor *myColor = [UIColor colorWithRed: 191.0/255.0 green:207.0/255.0 blue:182.0/255.0 alpha:1.0]; [self hexStringFromColor: myColor];
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
