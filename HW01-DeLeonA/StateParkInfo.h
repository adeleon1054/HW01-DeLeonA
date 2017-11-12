//
//  StateParkInfo.h
//  HW01-DeLeonA
//
//  Created by Asdruval De Leon on 11/12/17.
//  Copyright © 2017 Asdruval De Leon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIkit/UIKit.h>


@interface StateParkInfo : NSObject

@property (strong, nonatomic) NSString *name, *location, *yearOpen, *address, *descriptionInfo;
@property (strong, nonatomic) UIImage *thumbnail, *parkImage;

@end
