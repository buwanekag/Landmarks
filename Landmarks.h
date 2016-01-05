//
//  Landmarks.h
//  Landmarks
//
//  Created by Buwaneka Galpoththawela on 10/7/15.
//  Copyright (c) 2015 Buwaneka Galpoththawela. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Landmarks : NSManagedObject

@property (nonatomic, retain) NSString * landmarkName;
@property (nonatomic, retain) NSString * landmarkDescription;
@property (nonatomic, retain) NSString * landmarkLatitude;
@property (nonatomic, retain) NSString * landmarkLongitude;
@property (nonatomic, retain) NSString * landmarkImageName;
@property (nonatomic, retain) NSString * landmarkStreet;
@property (nonatomic, retain) NSString * landmarkCity;
@property (nonatomic, retain) NSString * landmarkState;
@property (nonatomic, retain) NSString * landmarkZip;
@property (nonatomic, retain) NSString * landmarkWeb;
@property (nonatomic, retain) NSString * landmarkPhone;

@end
