//
//  VCUrlRequest.h
//  Heal Me
//
//  Created by Victor Chan on 19/3/13.
//  Copyright (c) 2013 CS3284. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"
#define VC_URL_REQUEST_TIMEOUT_INTERVAL 10.0f

@interface VCUrlRequest : NSObject <NSURLConnectionDelegate>

@property (nonatomic, weak) NSString *url;
@property (nonatomic, weak) void (^completion)(BOOL, NSData*);
@property (nonatomic, strong) NSMutableData *result;
@property (nonatomic, strong) NSURLConnection *connection;
@property (nonatomic, strong) MBProgressHUD *HUD;

- (id)initWithURL:(NSString*)url showHUDInView:(UIView*)view withLabel:(NSString *)label doUponCompletion:(void (^)(BOOL finished, NSData *data))completion;
+ (id)requestWithURL:(NSString*)url showHUDInView:(UIView*)view withLabel:(NSString *)label doUponCompletion:(void (^)(BOOL finished, NSData *data))completion;

- (id)initWithURL:(NSString*)url postParameters:(NSString *)parameters showHUDInView:(UIView*)view withLabel:(NSString *)label doUponCompletion:(void (^)(BOOL finished, NSData *data))completion;
+ (id)requestWithURL:(NSString*)url postParameters:(NSString *)parameters showHUDInView:(UIView*)view withLabel:(NSString *)label doUponCompletion:(void (^)(BOOL finished, NSData *data))completion;

- (void)cancel;

@end
