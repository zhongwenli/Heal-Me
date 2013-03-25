/**
 * Drug.h
 * AUTH: TJIONGAN, Christopher
 */

#import <Foundation/Foundation.h>
#import <DataStruct/Dose.m>

@interface Drug: NSObject
{
	Dose *dose;
	
	NSString *name;
	NSMutableArray *arrayAlarm;	
    	
	int drugID;
}

@property (retain) Dose *dose;

@property (retain) NSString *name;
@property (retain) NSMutableArray *arrayAlarm;

@property int drugID;

@end
