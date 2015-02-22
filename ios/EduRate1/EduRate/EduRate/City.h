//
//  City.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class School;

@interface City : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *schools;

+ (NSArray*)getAllCitiesMOC:(NSManagedObjectContext*)moc;
+ (City*)createObjectWithName:(NSString*)nameIn moc:(NSManagedObjectContext*)moc;

@end

@interface City (CoreDataGeneratedAccessors)

- (void)addSchoolsObject:(School *)value;
- (void)removeSchoolsObject:(School *)value;
- (void)addSchools:(NSSet *)values;
- (void)removeSchools:(NSSet *)values;

@end
