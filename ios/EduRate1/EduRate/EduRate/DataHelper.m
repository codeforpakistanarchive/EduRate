//
//  DataHelper.m
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import "DataHelper.h"
#import "City.h"
#import "School.h"

@implementation DataHelper

- (void)populateInitialDataMOC:(NSManagedObjectContext*)moc
{
    City *city = [City createObjectWithName:@"ATTOCK" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"RAWALPINDI" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"ISLAMABAD" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"LAHORE" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"BANNU" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"PESHAWAR" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"KARACHI" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"FAISALABAD" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"NOWSHEHRA" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    city = [City createObjectWithName:@"BASAL" moc:moc];
    
    for (int i = 0; i < 10; i++) {
        [School createObjectWithName:[NSString stringWithFormat:@"%@%d", city.name, i] city:city moc:moc];
    }
    
    [moc save:nil];

}

@end
