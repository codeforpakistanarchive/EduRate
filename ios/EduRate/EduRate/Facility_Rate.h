//
//  Facility_Rate.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Facility, School;

@interface Facility_Rate : NSManagedObject

@property (nonatomic, retain) NSNumber * rating;
@property (nonatomic, retain) NSString * comment;
@property (nonatomic, retain) School *school;
@property (nonatomic, retain) Facility *facility;

+ (NSArray*)getAllFacilityRateForSchool:(School*)schoolIn facility:(Facility*)facilityIn  MOC:(NSManagedObjectContext*)moc;
+ (NSArray*)getAllFacilityRateMOC:(NSManagedObjectContext*)moc;
+ (Facility_Rate*)createObjectWithRating:(NSInteger)ratingIn comment:(NSString*)commentIn moc:(NSManagedObjectContext*)moc;

@end
