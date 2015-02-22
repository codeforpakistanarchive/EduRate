//
//  Facility.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "Facility.h"
#import "Facility_Rate.h"


@implementation Facility

@dynamic name;
@dynamic failityRatings;

+ (Facility*)createObjectWithName:(NSString*)nameIn moc:(NSManagedObjectContext*)moc
{
    Facility *facility = [NSEntityDescription insertNewObjectForEntityForName:@"Facility" inManagedObjectContext:moc];
    facility.name = nameIn;
    
    return facility;
}

+ (NSArray*)getAllFacilitiesMOC:(NSManagedObjectContext*)moc
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Facility"
                                              inManagedObjectContext:moc];
    
    [fetchRequest setEntity:entity];
    
    NSArray *allObjects = [moc executeFetchRequest:fetchRequest error:nil];
    
    return allObjects;
}


@end
