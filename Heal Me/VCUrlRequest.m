//
//  VCUrlRequest.m
//  Heal Me
//
//  Created by Victor Chan on 19/3/13.
//  Copyright (c) 2013 CS3284. All rights reserved.
//

#import "VCUrlRequest.h"

@implementation VCUrlRequest

@synthesize url=_url, completion=_completion, result=_result, connection=_connection, HUD=_hud;

- (id)initWithURL:(NSString*)url showHUDInView:(UIView*)view withLabel:(NSString *)label doUponCompletion:(void (^)(BOOL finished, NSData *data))completion{
    self = [super init];
    if (self){
        self.url = url;
        self.completion = completion;
        
        NSURL *URL = [NSURL URLWithString:self.url];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:VC_URL_REQUEST_TIMEOUT_INTERVAL];
        
        self.result = [NSMutableData data];
        
        self.connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        [self.connection start];
        [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
        
        if (view)  {
            self.HUD = [MBProgressHUD showHUDAddedTo:view animated:YES];
            self.HUD.labelText = label;
        }
    }
    return self;
}
+ (id)requestWithURL:(NSString*)url showHUDInView:(UIView*)view withLabel:(NSString *)label doUponCompletion:(void (^)(BOOL finished, NSData *data))completion{
    return [[VCUrlRequest alloc] initWithURL:url showHUDInView:view withLabel:label doUponCompletion:completion];
}

- (id)initWithURL:(NSString*)url postParameters:(NSString *)parameters showHUDInView:(UIView*)view withLabel:(NSString *)label doUponCompletion:(void (^)(BOOL finished, NSData *data))completion{
    self = [super init];
    if (self) {
        self.url = url;
        self.completion = completion;
        
        NSURL *URL = [NSURL URLWithString:self.url];
        NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:VC_URL_REQUEST_TIMEOUT_INTERVAL];
        [request setHTTPMethod:@"POST"];
        [request setHTTPBody:[parameters dataUsingEncoding:NSUTF8StringEncoding]];
        
        self.result = [NSMutableData data];
        
        self.connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        [self.connection start];
        [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
        
        if (view)  {
            self.HUD = [MBProgressHUD showHUDAddedTo:view animated:YES];
            self.HUD.labelText = label;
        }
    }
    return self;
}
+ (id)requestWithURL:(NSString*)url postParameters:(NSString *)parameters showHUDInView:(UIView*)view withLabel:(NSString *)label doUponCompletion:(void (^)(BOOL finished, NSData *data))completion{
    return [[VCUrlRequest alloc] initWithURL:url postParameters:parameters showHUDInView:view withLabel:label doUponCompletion:completion];
}

- (void)cancel{
    [self.connection cancel];
    self.connection=nil;
    [self.HUD hide:YES];
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.result appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    self.completion(YES, self.result);
    self.connection=nil;
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
	[self.HUD hide:YES afterDelay:0.5f];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"Error: %@", error);
    self.completion(NO, nil);
    self.connection = nil;
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
    
    [self.HUD hide:YES];
}
@end
