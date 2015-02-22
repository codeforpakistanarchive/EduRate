//
//  Facility_Rate.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "Facility_Rate.h"
#import "Facility.h"
#import "School.h"


@implementation Facility_Rate

@dynamic rating;
@dynamic comment;
@dynamic school;
@dynamic facility;

+ (Facility_Rate*)createObjectWithRating:(NSInteger)ratingIn comment:(NSString*)commentIn moc:(NSManagedObjectContext*)moc
{
    Facility_Rate *facility_Rate = [NSEntityDescription insertNewObjectForEntityForName:@"Facility_Rate" inManagedObjectContext:moc];
    facility_Rate.rating = [NSNumber numberWithInteger:ratingIn];
    facility_Rate.comment = commentIn;
    
    return facility_Rate;
}

+ (NSArray*)getAllFacilityRateMOC:(NSManagedObjectContext*)moc
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Facility_Rate"
                                              inManagedObjectContext:moc];
    
    [fetchRequest setEntity:entity];
    
    NSArray *allObjects = [moc executeFetchRequest:fetchRequest error:nil];
    
    return allObjects;
}

+ (NSArray*)getAllFacilityRateForSchool:(School*)schoolIn facility:(Facility*)facilityIn  MOC:(NSManagedObjectContext*)moc
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Facility_Rate"
                                              inManagedObjectContext:moc];
    
    [fetchRequest setEntity:entity];
    [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"(school == %@) && (facility == %@)", schoolIn, facilityIn]];
    
    NSArray *allObjects = [moc executeFetchRequest:fetchRequest error:nil];
    
    return allObjects;
}

@end
