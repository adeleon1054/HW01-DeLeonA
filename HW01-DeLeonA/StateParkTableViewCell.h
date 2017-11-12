//
//  StateParkTableViewCell.h
//  HW01-DeLeonA
//
//  Created by Asdruval De Leon on 11/12/17.
//  Copyright © 2017 Asdruval De Leon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StateParkTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;
@property (weak, nonatomic) IBOutlet UILabel *parkName;
@property (weak, nonatomic) IBOutlet UILabel *parkLocation;

@end
