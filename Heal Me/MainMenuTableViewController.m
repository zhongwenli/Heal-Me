//
//  MainMenuTableViewController.m
//  Heal Me
//
//  Created by Victor Chan on 19/3/13.
//  Copyright (c) 2013 CS3284. All rights reserved.
//

#import "MainMenuTableViewController.h"
#import "MainDataManager.h"

@interface MainMenuTableViewController ()

@end

@implementation MainMenuTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[MainDataManager sharedManager] viewController: self getProfileInformationForPatientID:@"1"];
    
}

@end
