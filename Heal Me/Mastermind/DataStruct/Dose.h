/**
 * Dose.h
 * AUTH: TJIONGAN, Christopher
 */

#import <Foundation/Foundation.h>

@interface Dose: NSObject
{
	double dose;
    	double remaining;

	NSString *form;
	NSString *instruction;
	NSString *remark;
}

@property double dose;
@property double remaining;

@property (retain) NSString *form;
@property (retain) NSString *instruction;
@property (retain) NSString *remark;

@end
