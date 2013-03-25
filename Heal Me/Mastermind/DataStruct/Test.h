/**
 * Test.h
 * AUTH: TJIONGAN, Christopher
 */

#import <Foundation/Foundation.h>

@interface Test: NSObject
{ 
	NSString *type;
    	NSString *result;

    	int isSelf;
	int testID;
}

@property (retain) NSString *type;
@property (retain) NSString *result;

@property int isSelf;
@property int testID;

@end
