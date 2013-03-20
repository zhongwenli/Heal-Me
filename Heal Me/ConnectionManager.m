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
#import "JSONKit.h"

#define GET_PATIENT_INFO_URL @"http://joydesigns.net/cs3284api/patient/get.php"    

@interface ConnectionManager()

-(NSDictionary *) convertToInternalFormatForPatientDictionary:(NSDictionary *)patientDictionary;

@end

@implementation ConnectionManager

@synthesize delegates=_delegates;

#pragma mark Instantiate Methods

SINGLETON(sharedManager);

- (id)init {
    self = [super init];
    if (self) {
        self.delegates = [NSMutableSet set];
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

#pragma mark Requests Methods
- (void)viewController:(UIViewController *)vc getProfileInformationForPatientID:(NSString *)patientID {
    NSString *urlString = [GET_PATIENT_INFO_URL stringByAppendingFormat:@"?patient_id=%@", patientID];
    NSLog(@"getProfileInformationForPatientID URL: %@", urlString);
    [VCUrlRequest requestWithURL:urlString showHUDInView:vc.view withLabel:@"Updating" doUponCompletion:^(BOOL finished, NSData *data){
        NSDictionary *dataDictionary = (NSDictionary *)[data objectFromJSONData];
        NSArray *patientArray = [dataDictionary objectForKey:@"patient"];
        NSDictionary *patientDictionary;
        for (id d in patientArray){
            if ([d isKindOfClass:[NSDictionary class]]) {
                patientDictionary = d;
            }
        }
        if (patientDictionary){
            NSDictionary *formattedPatientDictionary = [self convertToInternalFormatForPatientDictionary:patientDictionary];
            NSLog(@"%@",formattedPatientDictionary);
        }
    }];
}

#pragma mark Private Methods
- (NSDictionary *) convertToInternalFormatForPatientDictionary:(NSDictionary *)patientDictionary{
    NSMutableDictionary *formattedDictionary = [[NSMutableDictionary alloc] initWithCapacity:8];
    
    [formattedDictionary setObject:[patientDictionary objectForKey:@"patient_id"] forKey:@"ID"];
    [formattedDictionary setObject:[patientDictionary objectForKey:@"patient_name"] forKey:@"name"];
    [formattedDictionary setObject:[patientDictionary objectForKey:@"email"] forKey:@"email"];
    [formattedDictionary setObject:[patientDictionary objectForKey:@"password"] forKey:@"password"];
    [formattedDictionary setObject:[patientDictionary objectForKey:@"blood_type"] forKey:@"bloodType"];
    [formattedDictionary setObject:[patientDictionary objectForKey:@"age"] forKey:@"age"];
    [formattedDictionary setObject:[patientDictionary objectForKey:@"gender"] forKey:@"gender"];
    [formattedDictionary setObject:[patientDictionary objectForKey:@"condition"] forKey:@"condition"];
    
    return [formattedDictionary copy];
}


@end
