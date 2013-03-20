//
//  MainDataManager.h
//  Heal Me
//
//  Created by Victor Chan on 20/3/13.
//  Copyright (c) 2013 CS3284. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConnectionManager.h"

@interface MainDataManager : NSObject <ConnectionManagerDelegate>

@property (strong, nonatomic) NSMutableSet *delegates;

+ (id) sharedManager;
- (void)addDelegate:(id<ConnectionManagerDelegate>)delegate;
- (void)removeDelegate:(id<ConnectionManagerDelegate>)delegate;

#pragma mark Requests for Data
- (void)viewController:(UIViewController *)vc getProfileInformationForPatientID:(NSString *)patientID;

#pragma mark Posting Data

#pragma mark ConnectionManagerDelegate
- (void) connectionManager:(ConnectionManager *) connectionManager didReceiveProfileInformation:(NSDictionary *) patientInformation;

@end
