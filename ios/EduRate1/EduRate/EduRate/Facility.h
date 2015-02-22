//
//  Facility.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Facility_Rate;

@interface Facility : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet *failityRatings;

+ (NSArray*)getAllFacilitiesMOC:(NSManagedObjectContext*)moc;
+ (Facility*)createObjectWithName:(NSString*)nameIn moc:(NSManagedObjectContext*)moc;

@end

@interface Facility (CoreDataGeneratedAccessors)

- (void)addFailityRatingsObject:(Facility_Rate *)value;
- (void)removeFailityRatingsObject:(Facility_Rate *)value;
- (void)addFailityRatings:(NSSet *)values;
- (void)removeFailityRatings:(NSSet *)values;

@end
