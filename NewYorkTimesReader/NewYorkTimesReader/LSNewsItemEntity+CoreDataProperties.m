//
//  LSNewsItemEntity+CoreDataProperties.m
//  NewYorkTimesReader
//
//  Created by aleksandr on 19.05.17.
//  Copyright © 2017 LemonSchool. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "LSNewsItemEntity+CoreDataProperties.h"

@implementation LSNewsItemEntity (CoreDataProperties)

+ (NSFetchRequest<LSNewsItemEntity *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"LSNewsItemEntity"];
}

@dynamic itemID;
@dynamic link;
@dynamic title;
@dynamic descr;
@dynamic creator;
@dynamic pubDate;
@dynamic imageLink;
@dynamic favourite;
@dynamic category;

@end
