//
//  ViewController.m
//  Landmarks
//
//  Created by Buwaneka Galpoththawela on 10/7/15.
//  Copyright (c) 2015 Buwaneka Galpoththawela. All rights reserved.
//
#import "DisplayViewController.h"
#import "ViewController.h"
#import "Landmarks.h"
#import "AppDelegate.h"

@interface ViewController ()

@property (nonatomic, strong) AppDelegate *appDelegate;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
//@property (nonatomic,strong)  NSArray *landmarkArray;
@property (nonatomic,weak) IBOutlet MKMapView *landmarkMapView;
@property (nonatomic,strong) CLLocationManager *locationManager;
@property  (nonatomic,strong) NSString *selectdeLandmarkName;

@end

@implementation ViewController




#pragma Annotation Method
//new test


//-(void)annotateMapLocations{
//    NSMutableArray *pinsToRemove = [[NSMutableArray alloc]init];
//    for (id <MKAnnotation> annot in [_landmarkMapView annotations]) {
//        if ([annot isKindOfClass:[MKPointAnnotation class]]) {
//            [pinsToRemove addObject:annot];
//
//        }
//
//
//    }
//    [_landmarkMapView removeAnnotations:pinsToRemove];
//
//

-(void)annotateMapLocations{
    NSMutableArray *pinsToRemove = [[NSMutableArray alloc]init];
    for (id <MKAnnotation> annot in [_landmarkMapView annotations]) {
        if ([annot isKindOfClass :[MKPointAnnotation class]]) {
            [pinsToRemove addObject:annot];
            
        }
        
    }
    [_landmarkMapView removeAnnotations:pinsToRemove];
    
    NSMutableArray *pinsToAdd = [[NSMutableArray alloc] init];
    for (Landmarks *landmark in _appDelegate.landmarkArray) {
        MKPointAnnotation *pa = [[MKPointAnnotation alloc] init];
        double lat = [landmark.landmarkLatitude doubleValue];
        double lon = [landmark.landmarkLongitude doubleValue];
        pa.coordinate = CLLocationCoordinate2DMake(lat, lon);
        pa.title = landmark.landmarkName;
        [pinsToAdd addObject:pa];
        
        
    }
    [_landmarkMapView addAnnotations:pinsToAdd];
    
}

#pragma Core Data Method

- (void)tempAddRecords{
    Landmarks *newLandMark = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    newLandMark.landmarkName = @"Washington Monument";
    newLandMark.landmarkDescription =@"Built to honor George Washington, the United States,first president, the 555-foot marble obelisk towers over Washington, D.C.";
    newLandMark.landmarkStreet = @"900 Ohio Drive, SW";
    newLandMark.landmarkState = @"DC";
    newLandMark.landmarkZip = @"20024";
    newLandMark.landmarkLatitude = @"38.889475";
    newLandMark.landmarkLongitude = @"-77.035224";
    newLandMark.landmarkWeb = @"http://www.nps.gov/wamo/index.htm";
    newLandMark.landmarkPhone = @"202-426-6841";
    newLandMark.landmarkImageName = @"WashingtonMonument";
    
    
    
    Landmarks *newLandMark1 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext: _managedObjectContext];
    newLandMark1.landmarkName = @"Franklin Delano Roosevelt Memorial";
    newLandMark1.landmarkDescription = @"Located near the National Mall, along Cherry Tree Walk. The memorial features four outdoor rooms, each one representing one of his four terms. There is also a 10-foot statue of the former President in a wheelchair. Roosevelt was the 32nd President and came into office during the Great Depression.";
    newLandMark1.landmarkLatitude = @"38.8894426";
    newLandMark1.landmarkLongitude = @"-77.0405563";
    newLandMark1.landmarkImageName = @"RooserveltMemorial";
    newLandMark1.landmarkStreet = @"1850 W Basin Drive";
    newLandMark1.landmarkCity = @"Washington";
    newLandMark1.landmarkState = @"DC";
    newLandMark1.landmarkZip = @"20024";
    newLandMark1.landmarkPhone = @"202-426-6841";
    newLandMark1.landmarkWeb = @"http://www.nps.gov/frde/index.htm";
    
     Landmarks *newLandMark2 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    newLandMark2.landmarkName = @"Thomas Jefferson Memorial";
    newLandMark2.landmarkDescription = @"Thomas Jefferson had many attributes, he was a political philosopher, architect, musician,scientist and primarily the third President of the United States. Honoring the formerPresidents life and his contribution to the United States,a nintee foot bronze statue ofJefferson surrounded by his most famous writings stands as the centerpiece of thememorial.";
    newLandMark2.landmarkLatitude = @"38.879889";
    newLandMark2.landmarkLongitude = @"-77.036519";
    newLandMark2.landmarkImageName = @"JeffersonMemorial";
    newLandMark2.landmarkStreet = @"13 E Basin Dr SW";
    newLandMark2.landmarkCity = @"Washington";
    newLandMark2.landmarkState = @"DC";
    newLandMark2.landmarkZip = @"20242";
    newLandMark2.landmarkPhone = @"202-426-6841";
    newLandMark2.landmarkWeb = @"www.nps.gov/thje/index.htm";

    
    Landmarks *newLandMark3 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    
    newLandMark3.landmarkName = @"Newseum";
    newLandMark3.landmarkDescription = @"This is a museum of new, idiot";
    newLandMark3.landmarkLatitude = @"38.8930396";
    newLandMark3.landmarkLongitude = @"-77.0192849";
    newLandMark3.landmarkImageName = @"Newseum";
    newLandMark3.landmarkStreet = @"555 Pennsylvania Ave NW";
    newLandMark3.landmarkCity = @"Washington";
    newLandMark3.landmarkState = @"DC";
    newLandMark3.landmarkZip = @"20001";
    newLandMark3.landmarkWeb = @"www.newseum.org";
    newLandMark3.landmarkPhone = @"(202) 292-6100";
    
    
    Landmarks *newLandMark4 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    
    newLandMark4.landmarkName = @"MLK Monument";
    newLandMark4.landmarkDescription = @"This is a monument of MLK";
    newLandMark4.landmarkLatitude = @"38.8861955";
    newLandMark4.landmarkLongitude = @"-77.0441984";
    newLandMark4.landmarkImageName = @"MLKMonument";
    newLandMark4.landmarkStreet = @"1964 Independence Ave SW";
    newLandMark4.landmarkCity = @"Washington";
    newLandMark4.landmarkState = @"DC";
    newLandMark4.landmarkZip = @"20024";
    newLandMark4.landmarkWeb = @"http://www.nps.gov/mlkm/index.htm";
    newLandMark4.landmarkPhone = @"(202) 426-6841";
    
    
    Landmarks *newLandMark5 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    newLandMark5.landmarkName = @"Vietnam Memorial";
    newLandMark5.landmarkDescription = @"This is the Vietnam war memorial";
    newLandMark5.landmarkLatitude = @"38.8912483";
    newLandMark5.landmarkLongitude = @"-77.0476963";
    newLandMark5.landmarkImageName = @"VietnamMemorial";
    newLandMark5.landmarkStreet = @"5 Henry Bacon Dr NW";
    newLandMark5.landmarkCity = @"Washington";
    newLandMark5.landmarkState = @"DC";
    newLandMark5.landmarkZip = @"20024";
    newLandMark5.landmarkWeb = @"http://www.nps.gov/vive/index.htm";
    newLandMark5.landmarkPhone = @"(202) 426-6841";
    
    Landmarks *newLandMark6 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];

    newLandMark6.landmarkName = @"World War 2";
    newLandMark6.landmarkDescription = @"This is the War War Z war memorial";
    newLandMark6.landmarkLatitude = @"38.8894426";
    newLandMark6.landmarkLongitude = @"-77.0405563";
    newLandMark6.landmarkImageName = @"wwiiMemorial";
    newLandMark6.landmarkStreet = @"1750 Independence Ave SW";
    newLandMark6.landmarkCity = @"Washington";
    newLandMark6.landmarkState = @"DC";
    newLandMark6.landmarkZip = @"20006";
    newLandMark6.landmarkWeb = @"https://www.wwiimemorial.com/";
    newLandMark6.landmarkPhone = @"(202) 426-6841";
    
    Landmarks *newLandMark7 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    
    newLandMark7.landmarkName = @"Lincoln Monument";
    newLandMark7.landmarkDescription = @"This is the lincoln momument";
    newLandMark7.landmarkLatitude = @"38.889569";
    newLandMark7.landmarkLongitude = @"-77.049642";
    newLandMark7.landmarkImageName = @"LinconMonument";
    newLandMark7.landmarkStreet = @"2 Lincoln Memorial Cir NW";
    newLandMark7.landmarkCity = @"Washington";
    newLandMark7.landmarkState = @"DC";
    newLandMark7.landmarkZip = @"20037";
    newLandMark7.landmarkWeb = @"http://www.nps.gov/linc/index.htm";
    newLandMark7.landmarkPhone = @"(202) 426-6841";
    
    
    Landmarks *newLandMark8 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:self.managedObjectContext];
    
    newLandMark8.landmarkName = @"Verizon Center";
    newLandMark8.landmarkLatitude = @"38.897540";
    newLandMark8.landmarkLongitude = @"-77.020955";
    newLandMark8.landmarkImageName = @"VerizonCenter";
    newLandMark8.landmarkStreet = @"601 F St NW";
    newLandMark8.landmarkCity = @"Washington";
    newLandMark8.landmarkState = @"DC";
    newLandMark8.landmarkZip = @"20004";
    newLandMark8.landmarkWeb = @"www.verizoncenter.monumentalnetwork.com";
    newLandMark8.landmarkPhone = @"2026283200";
    newLandMark8.landmarkDescription = @"Home of the Washington Capitals and Wizards.  Formally known as MCI Center, Verizon Center also serves as an entertainment arena for various artists and performers";
    
    Landmarks *newLandMark9 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    
    newLandMark9.landmarkName = @"Washington Monument";
    newLandMark9.landmarkLatitude = @"38.889475";
    newLandMark9.landmarkLongitude = @"-77.035224";
    newLandMark9.landmarkImageName = @"WashingtonMonument";
    newLandMark9.landmarkStreet = @"900 Ohio Dr. SW";
    newLandMark9.landmarkCity = @"Washington";
    newLandMark9.landmarkState = @"DC";
    newLandMark9.landmarkZip = @"20024";
    newLandMark9.landmarkWeb = @"www.nps.gov.wamo/index.htm";
    newLandMark9.landmarkPhone = @"2024266841";
    newLandMark9.landmarkDescription  = @"Built to honor George Washington, the United States first president, the 555-foot marble obelisk towers over Washington, D.C.";
    
    Landmarks *newLandMark10 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    
    newLandMark10.landmarkName = @"The Iron Yard DC";
    newLandMark10.landmarkLatitude = @"38.906004";
    newLandMark10.landmarkLongitude = @"-77.041880";
    newLandMark10.landmarkImageName = @"TheIronYard";
    newLandMark10.landmarkStreet = @"1200 18th St. NW";
    newLandMark10.landmarkCity   = @"Washington";
    newLandMark10.landmarkState  = @"DC";
    newLandMark10.landmarkZip    = @"20036";
    newLandMark10.landmarkWeb = @"www.theironyard.com/locations/washington-dc/";
    newLandMark10.landmarkPhone  = @"5717339744";
    newLandMark10.landmarkDescription = @"This is the location of The Iron Yard DC, a coding bootcamp that helps you get the career in software development you want";
    
    Landmarks *newLandMark11 = (Landmarks *)[NSEntityDescription insertNewObjectForEntityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
   
    newLandMark11.landmarkName = @"McDonald's";
    newLandMark11.landmarkLatitude = @"38.905622";
    newLandMark11.landmarkLongitude = @"-77.044218";
    newLandMark11.landmarkImageName = @"McDonald's";
    newLandMark11.landmarkStreet = @"1916 M St NW";
    newLandMark11.landmarkCity= @"Washington";
    newLandMark11.landmarkState  = @"DC";
    newLandMark11.landmarkZip    = @"20036";
    newLandMark11.landmarkWeb = @"www.mcdonalds.com/us/en/home.html";
    newLandMark11.landmarkPhone = @"2022968839";
    newLandMark11.landmarkDescription = @"This McDonald's location is right down the street from The Iron Yard campus and is a great stop for very cheap food";
    
    
    [_appDelegate saveContext];
}



- (NSArray *)fetchLandmarks {
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Landmarks" inManagedObjectContext:_managedObjectContext];
    [fetchRequest setEntity:entity];
    
    NSArray *fetchResults = [_managedObjectContext executeFetchRequest:fetchRequest error:nil];
    return fetchResults;
    
}



- (void)startLocationMonitoring {
    [_locationManager startUpdatingLocation];
    _landmarkMapView.showsUserLocation = true;
}

-(void)setupLocationMonitoring{
    _locationManager = [[CLLocationManager alloc]init];
    _locationManager.delegate = self;
    _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    if ([CLLocationManager locationServicesEnabled]){
        NSLog(@"LocSvcs Enabled");
        switch ([CLLocationManager authorizationStatus]) {
            case kCLAuthorizationStatusAuthorizedAlways:
                [self startLocationMonitoring];
                break;
            case kCLAuthorizationStatusAuthorizedWhenInUse:
                [self startLocationMonitoring];
                break;
            case kCLAuthorizationStatusDenied:
                break;
            case kCLAuthorizationStatusNotDetermined:
                if ([_locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]){
                    
                    [_locationManager requestWhenInUseAuthorization];
                }
                
                break;
                
            case kCLAuthorizationStatusRestricted:
                break;
                
            default:
                break;
        }
    }
}

# pragma mark map method


-(void)zoomToPins{
    [_landmarkMapView showAnnotations:[_landmarkMapView annotations] animated:true];
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
    if (annotation != mapView.userLocation) {
        MKPinAnnotationView *annotationView = (MKPinAnnotationView *)[mapView dequeueReusableAnnotationViewWithIdentifier:@"Pin"];
        
        if (annotationView == nil) {
            annotationView = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"Pin"];
        }
        annotationView.canShowCallout = true;
        annotationView.animatesDrop = true;
        annotationView.pinColor = MKPinAnnotationColorGreen;
        annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        
        
        return annotationView;
    }
    return nil;
}


-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control{
    NSLog(@"tap");
    _selectdeLandmarkName = view.annotation.title;
    [self performSegueWithIdentifier:@"segueMap" sender:mapView];

    
}



//_selectedLandmarkName = view.annotation.title;
//[self performSegueWithIdentifier:@"seguePinToDetail" sender:mapView];
//}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DisplayViewController *destController = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"segueMap"]) {
        
        Landmarks *currentLandmark = [_appDelegate fetchLandmarksByName:_selectdeLandmarkName];
        destController.currentLandmark = currentLandmark;
    }
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    DisplayViewController *listcontroller = [segue destinationViewController];
//    if ([[segue identifier] isEqualToString:@"segueMap"]) {
////        NSIndexPath *indexPath = [_landmarkNameDisplay indexPathForSelectedRow];
////        Landmarks *currentLandmark = _appDelegate.landmarkArray[indexPath.row];
//        NSLog(@"Starting");
//        listcontroller.currentLandmark = _currentLandmark;
//        NSLog(@"Done");
//    }
//}
//

#pragma Life Cycle Method

- (void)viewDidLoad {
    [super viewDidLoad];
    _appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    _appDelegate.landmarkArray = [_appDelegate fetchLandmarks];
      _managedObjectContext = _appDelegate.managedObjectContext;

    

    
    //[self tempAddRecords];
    
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    [self setupLocationMonitoring];
    _appDelegate.landmarkArray = [_appDelegate fetchLandmarks];
    [self annotateMapLocations];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
