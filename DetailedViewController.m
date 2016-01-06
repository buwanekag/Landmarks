//
//  DetailedViewController.m
//  Landmarks
//
//  Created by Buwaneka Galpoththawela on 10/8/15.
//  Copyright (c) 2015 Buwaneka Galpoththawela. All rights reserved.
//

#import "DetailedViewController.h"
#import "DisplayViewController.h"
#import "AppDelegate.h"
#import "Landmarks.h"

@interface DetailedViewController ()
@property  (nonatomic,weak) IBOutlet UITableView *landmarkNameDisplay;
@property (nonatomic, strong) AppDelegate *appDelegate;
@end

@implementation DetailedViewController


#pragma - Table View Methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _appDelegate.landmarkArray.count;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *basicCell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"cell"];
    Landmarks *currentlandmark = _appDelegate.landmarkArray[indexPath.row];
    
    basicCell.imageView.frame = CGRectMake(30, 30, 0, 0);

    basicCell.textLabel.text = currentlandmark.landmarkName;
    basicCell.detailTextLabel.text = currentlandmark.landmarkStreet;
    basicCell.imageView.image = [UIImage imageNamed:[currentlandmark landmarkImageName]];
    CGFloat widthScale = basicCell.imageView.image.size.width;
    CGFloat heightScale = basicCell.imageView.image.size.height;
    basicCell.imageView.transform = CGAffineTransformMakeScale(widthScale, heightScale);
    
    
    //  basicCell.imageView.image = [UIImage imageWithCGImage:currentlandmark scale:widthScale,heightScale orientation:nil];
    
    
   // [basicCell sizeToFit];
    return basicCell;
}




#pragma mark - Interactive Method


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    DisplayViewController *listcontroller = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"segueTable"]) {
        NSIndexPath *indexPath = [_landmarkNameDisplay indexPathForSelectedRow];
        Landmarks *currentLandmark = _appDelegate.landmarkArray[indexPath.row];
        listcontroller.currentLandmark = currentLandmark;
        
    }
}




#pragma mark - Life Cycle Method

- (void)viewDidLoad {
    [super viewDidLoad];
    _appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    _appDelegate.landmarkArray = [_appDelegate fetchLandmarks];
    
   
    

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
