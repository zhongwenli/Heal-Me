//
//  ConnectionManager.h
//  Heal Me
//
//  Created by Victor Chan on 19/3/13.
//  Copyright (c) 2013 CS3284. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ConnectionManager;

@protocol ConnectionManagerDelegate <NSObject>

@end

@interface ConnectionManager : NSObject
@property (strong, nonatomic) NSMutableSet *delegates;

+ (id)sharedManager;
- (void)addDelegate:(id<ConnectionManagerDelegate>)delegate;
- (void)removeDelegate:(id<ConnectionManagerDelegate>)delegate;

- (void)viewController:(UIViewController *)vc getProfileInformationForPatientID:(NSString *)patientID;

@end
