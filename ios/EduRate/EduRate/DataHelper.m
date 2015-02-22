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
#import "Facility.h"

@implementation DataHelper

- (void)populateInitialDataMOC:(NSManagedObjectContext*)moc
{
    City *city = [City createObjectWithName:@"Islamabad" moc:moc];
    [School createObjectWithName:@"International School of Islamabad" city:city moc:moc];
    [School createObjectWithName:@"Westminster School & College" city:city moc:moc];
    [School createObjectWithName:@"Preparatory School Islamabad" city:city moc:moc];
    [School createObjectWithName:@"Headstart School Islamabad" city:city moc:moc];
    [School createObjectWithName:@"Imperial International School and College" city:city moc:moc];
    [School createObjectWithName:@"Islamabad Convent School" city:city moc:moc];
    [School createObjectWithName:@"International Islamic Grammar School" city:city moc:moc];
    [School createObjectWithName:@"Roots International" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Schola Nova" city:city moc:moc];
    
    city = [City createObjectWithName:@"Karachi" moc:moc];
    [School createObjectWithName:@"Karachi School of Art" city:city moc:moc];
    [School createObjectWithName:@"Karachi Grammar School" city:city moc:moc];
    [School createObjectWithName:@"Karachi American School" city:city moc:moc];
    [School createObjectWithName:@"St. Joseph's Convent School" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Mirpur Azad Kashmir" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    
    city = [City createObjectWithName:@"Gujar Khan" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Bannu" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Quetta" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Abbottabad" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Lahore" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Bahwalpur" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Khanpur" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Peshawar" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    city = [City createObjectWithName:@"Pakpattan" moc:moc];
    [School createObjectWithName:@"The City School" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"OPF School and College" city:city moc:moc];
    [School createObjectWithName:@"Roots Thematic Montessori Mirpur" city:city moc:moc];
    [School createObjectWithName:@"Dawood Public School" city:city moc:moc];
    [School createObjectWithName:@"Bay View High School" city:city moc:moc];
    [School createObjectWithName:@"BVS School" city:city moc:moc];
    [School createObjectWithName:@"Aisha Banway Academy Girls Branch" city:city moc:moc];
    [School createObjectWithName:@"Beaconhouse School System" city:city moc:moc];
    [School createObjectWithName:@"Army Public School" city:city moc:moc];
    
    [moc save:nil];
    
    [self loadFaicilities:moc];
}

- (void)loadFaicilities:(NSManagedObjectContext*)moc
{
    Facility *facility = [Facility createObjectWithName:@"School Building" moc:moc];
    facility = [Facility createObjectWithName:@"Toilets" moc:moc];
    facility = [Facility createObjectWithName:@"Running Water" moc:moc];
    facility = [Facility createObjectWithName:@"Electricity" moc:moc];
    facility = [Facility createObjectWithName:@"Cleanliness" moc:moc];
    facility = [Facility createObjectWithName:@"Teaching Staff" moc:moc];
    facility = [Facility createObjectWithName:@"Support Staff" moc:moc];
    facility = [Facility createObjectWithName:@"Teaching Aid" moc:moc];
    facility = [Facility createObjectWithName:@"Availability of Playground" moc:moc];
    
    [moc save:nil];
}

@end
