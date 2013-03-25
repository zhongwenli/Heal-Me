/**
 * UserProfile.h
 * AUTH: TJIONGAN, Christopher
 */

#import <Foundation/Foundation.h>

@interface UserProfile: NSObject
{
	NSString *name;
	NSString *email;
	NSString *bloodType;
	NSString *condition;
	NSString *gender;

	int age;
	int userProfileID;
}

@property (retain) NSString *name;
@property (retain) NSString *email;
@property (retain) NSString *bloodType;
@property (retain) NSString *condition;
@property (retain) NSString *gender;

@property int age;
@property int userProfileID;

@end
