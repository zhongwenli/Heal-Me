/**
 * Doctor.h
 * AUTH: TJIONGAN, Christopher
 */

#import <Foundation/Foundation.h>

@interface Doctor: NSObject
{
	NSString *name;
	NSString *department;

	int doctorID;
}

@property (retain) NSString *name;
@property (retain) NSString *department;

@property int doctorID;

@end
