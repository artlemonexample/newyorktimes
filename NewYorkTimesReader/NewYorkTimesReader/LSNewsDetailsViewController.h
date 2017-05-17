//
//  LSNewsDetailsViewController.h
//  NewYorkTimesReader
//
//  Created by Artem Kravchenko on 5/17/17.
//  Copyright © 2017 LemonSchool. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LSNewsItem.h"

@interface LSNewsDetailsViewController : UIViewController

@property (nonatomic, strong) LSNewsItem *newsItem;

@end
