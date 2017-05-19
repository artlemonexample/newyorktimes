//
//  LSDataProvider.h
//  NewYorkTimesReader
//
//  Created by Artem Kravchenko on 5/17/17.
//  Copyright © 2017 LemonSchool. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MagicalRecord/MagicalRecord.h>
#import "LSNewsItemEntity+CoreDataClass.h"
#import "LSNewsItemEntity+CoreDataProperties.h"


@interface LSDataProvider : NSObject

+ (instancetype)sharedInstance;

- (NSURL*)urlFromLink:(NSString*)link;

- (void)loadImage:(NSString*)link completion:(void(^)(UIImage*))completion;
- (void)loadListOfNews:(NSString*)link category:(NSString *)category completion:(void (^)(NSArray*))completion;

@end
