//
//  ConnectionManager.m
//  Heal Me
//
//  Created by Victor Chan on 19/3/13.
//  Copyright (c) 2013 CS3284. All rights reserved.
//

#import "ConnectionManager.h"
#import "VCSingleton.h"
#import "VCUrlRequest.h"

#define GET_PATIENT_INFO_URL @"http://joydesigns.net/cs3284api/patient/get.php"    


@implementation ConnectionManager

@synthesize delegates=_delegates;

SINGLETON(sharedManager);

- (id)init {
    self = [super init];
    if (self) {
        self.delegates = [NSMutableSet set];
    }
    return self;
}

- (void)addDelegate:(id<ConnectionManagerDelegate>)delegate {
    [self.delegates addObject:delegate];
}

- (void)removeDelegate:(id<ConnectionManagerDelegate>)delegate {
    [self.delegates removeObject:delegate];
}

- (void)viewController:(UIViewController *)vc getProfileInformationForPatientID:(NSString *)patientID {
    NSString *urlString = [GET_PATIENT_INFO_URL stringByAppendingFormat:@"?patient_id=%@", patientID];
    //NSLog(@"getProfileInformationForPatientID URL: %@", urlString);
    [VCUrlRequest requestWithURL:urlString showHUDInView:vc.view withLabel:nil doUponCompletion:^(BOOL finished, NSData *data){
        
    }];
    
}

@end
