//
//  DisplayViewController.m
//  Landmarks
//
//  Created by Buwaneka Galpoththawela on 10/8/15.
//  Copyright (c) 2015 Buwaneka Galpoththawela. All rights reserved.
//

#import "DisplayViewController.h"
#import <MapKit/MapKit.h>
#import <SafariServices/SafariServices.h>

@interface DisplayViewController ()

@property (nonatomic,weak) IBOutlet UILabel *landmarkNameLabel;
@property (nonatomic,weak) IBOutlet UILabel *landmarkDescription;
@property (nonatomic,weak) IBOutlet UILabel *landmarkAddress;
@property (nonatomic,weak) IBOutlet UILabel *landmarkWeb;
@property (nonatomic,weak) IBOutlet UIImageView *landmarkView;
@property (nonatomic,weak) IBOutlet MKMapView *displayMap;
@property (nonatomic,weak) IBOutlet UIButton *facebook;
@property (nonatomic,weak) IBOutlet UITextField *landmarkPhone;


@end

@implementation DisplayViewController

#pragma Interactive Methods

//- (IBAction)facebookButtonPressed:(id)sender {
//    NSLog(@"facebook");
//    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
//        SLComposeViewController *_facebook = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
//        [_facebook setInitialText:@"hello"];
//        [self.navigationController presentViewController:_facebook animated:true completion:nil];
//    }
//}




- (void)viewDidLoad {
    [super viewDidLoad];
    _landmarkNameLabel.text = _currentLandmark.landmarkName;
    _landmarkDescription.text = _currentLandmark.landmarkDescription;

    
    
    _landmarkAddress.text = [NSString stringWithFormat:@"%@,%@ %@",_currentLandmark.landmarkStreet,_currentLandmark.landmarkState,_currentLandmark.landmarkZip];
    _landmarkPhone.text = _currentLandmark.landmarkPhone;
    _landmarkWeb.text = _currentLandmark.landmarkWeb;
    _landmarkView.image = [UIImage imageNamed:_currentLandmark.landmarkImageName];
    // _landmarkView.image = [UIImage ]
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%@", self.currentLandmark.landmarkName);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
