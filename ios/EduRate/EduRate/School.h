//
//  School.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class City, Facility_Rate;

@interface School : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSNumber * noOfStudents;
@property (nonatomic, retain) NSString * about;
@property (nonatomic, retain) City *city;
@property (nonatomic, retain) NSSet *failityRatings;

+ (NSArray*)getAllSchoolsMOC:(NSManagedObjectContext*)moc;
+ (School*)createObjectWithName:(NSString*)nameIn city:(City*)cityIn moc:(NSManagedObjectContext*)moc;

@end

@interface School (CoreDataGeneratedAccessors)

- (void)addFailityRatingsObject:(Facility_Rate *)value;
- (void)removeFailityRatingsObject:(Facility_Rate *)value;
- (void)addFailityRatings:(NSSet *)values;
- (void)removeFailityRatings:(NSSet *)values;

@end
