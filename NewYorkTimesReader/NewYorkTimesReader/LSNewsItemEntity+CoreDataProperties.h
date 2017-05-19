//
//  LSNewsItemEntity+CoreDataProperties.h
//  NewYorkTimesReader
//
//  Created by aleksandr on 19.05.17.
//  Copyright © 2017 LemonSchool. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "LSNewsItemEntity+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface LSNewsItemEntity (CoreDataProperties)

+ (NSFetchRequest<LSNewsItemEntity *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *itemID;
@property (nullable, nonatomic, copy) NSString *link;
@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *descr;
@property (nullable, nonatomic, copy) NSString *creator;
@property (nullable, nonatomic, copy) NSString *pubDate;
@property (nullable, nonatomic, copy) NSString *imageLink;
@property (nonatomic) BOOL favourite;
@property (nullable, nonatomic, copy) NSString *category;

@end

NS_ASSUME_NONNULL_END
