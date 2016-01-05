//
//  ViewController.h
//  Landmarks
//
//  Created by Buwaneka Galpoththawela on 10/7/15.
//  Copyright (c) 2015 Buwaneka Galpoththawela. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <MKMapViewDelegate,CLLocationManagerDelegate,UISearchBarDelegate,UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) Landmarks *currentLandmark;


@end

