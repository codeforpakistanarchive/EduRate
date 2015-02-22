//
//  School.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "School.h"
#import "City.h"
#import "Facility_Rate.h"


@implementation School

@dynamic name;
@dynamic type;
@dynamic noOfStudents;
@dynamic about;
@dynamic city;
@dynamic failityRatings;

+ (School*)createObjectWithName:(NSString*)nameIn city:(City*)cityIn moc:(NSManagedObjectContext*)moc
{
    School *school = [NSEntityDescription insertNewObjectForEntityForName:@"School" inManagedObjectContext:moc];
    school.name = nameIn;
    school.city = cityIn;
    
    return school;
}

+ (NSArray*)getAllSchoolsMOC:(NSManagedObjectContext*)moc
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"School"
                                              inManagedObjectContext:moc];
    
    [fetchRequest setEntity:entity];
    
    NSArray *allObjects = [moc executeFetchRequest:fetchRequest error:nil];
    
    return allObjects;
}

+ (NSArray*)getAllSchoolsForCity:(City*)city MOC:(NSManagedObjectContext*)moc
{
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"School"
                                              inManagedObjectContext:moc];
    
    [fetchRequest setEntity:entity];
    [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"city == %@", city]];
    
    NSArray *allObjects = [moc executeFetchRequest:fetchRequest error:nil];
    
    return allObjects;
}


@end
