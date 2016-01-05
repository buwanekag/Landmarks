//
//  AppDelegate.h
//  Landmarks
//
//  Created by Buwaneka Galpoththawela on 10/7/15.
//  Copyright (c) 2015 Buwaneka Galpoththawela. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import <MapKit/MapKit.h>
#import "Landmarks.h"



@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic,strong)  NSArray *landmarkArray;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


- (NSArray *)fetchLandmarks;

- (Landmarks *)fetchLandmarksByName:(NSString *)landmarkName;

@end




