//
//  MainDataManager.m
//  Heal Me
//
//  Created by Victor Chan on 20/3/13.
//  Copyright (c) 2013 CS3284. All rights reserved.
//

#import "MainDataManager.h"
#import "VCSingleton.h"

@implementation MainDataManager

@synthesize delegates=_delegates;

#pragma mark Instantiate Methods

SINGLETON(sharedManager);

- (id) init{
    self = [super init];
    if(self){
        [[ConnectionManager sharedManager] addDelegate:self];
    }
    return self;
}

#pragma mark Delegate Methods
- (void)addDelegate:(id<ConnectionManagerDelegate>)delegate {
    [self.delegates addObject:delegate];
}

- (void)removeDelegate:(id<ConnectionManagerDelegate>)delegate {
    [self.delegates removeObject:delegate];
}

- (void)viewController:(UIViewController *)vc getProfileInformationForPatientID:(NSString *)patientID{
    [[ConnectionManager sharedManager] viewController: vc getProfileInformationForPatientID:patientID];
}

- (void) dealloc{
    [[ConnectionManager sharedManager] removeDelegate:self];
}

#pragma mark ConnectionManagerDelegate

- (void) connectionManager:(ConnectionManager *) connectionManager didReceiveProfileInformation:(NSDictionary *) patientInformation{
    NSLog(@"%@",patientInformation);
}
@end
