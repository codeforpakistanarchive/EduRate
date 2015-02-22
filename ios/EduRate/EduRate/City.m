//
//  City.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "City.h"
#import "School.h"


@implementation City

@dynamic name;
@dynamic schools;

+ (City*)createObjectWithName:(NSString*)nameIn moc:(NSManagedObjectContext*)moc
{
    City *city = [NSEntityDescription insertNewObjectForEntityForName:@"City" inManagedObjectContext:moc];
    city.name = nameIn;
    
    return city;
}

+ (NSArray*)getAllCitiesMOC:(NSManagedObjectContext*)moc
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"City"
                                              inManagedObjectContext:moc];
    
    [fetchRequest setEntity:entity];
    
    NSArray *allObjects = [moc executeFetchRequest:fetchRequest error:nil];
    
    return allObjects;
}

@end
