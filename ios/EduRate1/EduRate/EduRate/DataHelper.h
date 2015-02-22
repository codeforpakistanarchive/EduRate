//
//  DataHelper.h
//  EduRate
//
//  Created by Muhammad Ubaid on 2/21/15.
//  Copyright (c) 2015 Muhammad Ubaid. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface DataHelper : NSObject

- (void)populateInitialDataMOC:(NSManagedObjectContext*)moc;

@end
