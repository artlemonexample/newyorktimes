//
//  LSNewsListViewController.h
//  NewYorkTimesReader
//
//  Created by Artem Kravchenko on 5/16/17.
//  Copyright © 2017 LemonSchool. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LSNewsCategory.h"

@interface LSNewsListViewController : UITableViewController

@property (nonatomic, strong) LSNewsCategory *category;

@end
