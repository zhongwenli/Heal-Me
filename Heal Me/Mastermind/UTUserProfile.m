/**
 * UTUserProfile.m
 * AUTH: TJIONGAN, Christopher
 * Unit test for UserProfile class
 */

#import <DataStruct/UserProfile.m>

int main (int argc, const char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Test 1: Constructor
	NSLog (@"Test 1: Constructor");
	
	UserProfile *userProfile;
	userProfile = [[UserProfile alloc] init];
	NSLog (@"--Test: init");
	
	NSLog (@"Complete");
	NSLog (@"--------");
	
	// Test 2: Accessor	
	NSLog (@"Test 2: Accessor");
		
	[userProfile setName: @"--Test: setName"];
	NSLog (userProfile.name);
	
	[userProfile setEmail: @"--Test: setEmail"];
	NSLog (userProfile.email);
	
	[userProfile setBloodType: @"--Test: setBloodType"];
	NSLog (userProfile.bloodType);
	
	[userProfile setCondition: @"--Test: setCondition"];
	NSLog (userProfile.condition);

	[userProfile setGender: @"--Test: setGender"];
	NSLog (userProfile.gender);

	[userProfile setAge: 100];
	NSLog (@"--Test: setAge-%@", [NSString stringWithFormat:@"%d", userProfile.age]);
	
	[userProfile setUserProfileID: 100];
	NSLog (@"--Test: setUserProfileID-%@", [NSString stringWithFormat:@"%d", userProfile.userProfileID]);

	NSLog (@"Complete");
	NSLog (@"--------");

	[pool drain];
	return 0;
}
