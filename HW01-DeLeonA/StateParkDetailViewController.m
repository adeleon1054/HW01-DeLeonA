//
//  StateParkDetailViewController.m
//  HW01-DeLeonA
//
//  Created by Asdruval De Leon on 11/12/17.
//  Copyright © 2017 Asdruval De Leon. All rights reserved.
//

#import "StateParkDetailViewController.h"
#import "StateParkInfo.h"

@interface StateParkDetailViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *parkImage;
@property (weak, nonatomic) IBOutlet UILabel *lblYear;
@property (weak, nonatomic) IBOutlet UILabel *lblAddress;
@property (weak, nonatomic) IBOutlet UILabel *lblDescription;
@property (weak, nonatomic) IBOutlet UITextView *txtViewDescription;


@end

@implementation StateParkDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _parkImage.image = _currentStatePark.parkImage;
    _lblYear.text = [NSString stringWithFormat:@"%@", _currentStatePark.yearOpen];
    _lblAddress.text = [NSString stringWithFormat:@"%@", _currentStatePark.address];
    _txtViewDescription.text = [NSString stringWithFormat:@"%@", _currentStatePark.descriptionInfo];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
