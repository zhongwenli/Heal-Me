/**
 * UTDoctor.m
 * AUTH: TJIONGAN, Christopher
 * Unit test for Doctor class
 */

#import <DataStruct/Doctor.m>

int main (int argc, const char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Test 1: Constructor
	NSLog (@"Test 1: Constructor");
	
	Doctor *doctor;
	doctor = [[Doctor alloc] init];
	NSLog (@"--Test: init");	
	
	NSLog (@"Complete");
	NSLog (@"--------");
	
	// Test 2: Accessor	
	NSLog (@"Test 2: Accessor");
		
	[doctor setName: @"--Test: setName"];
	NSLog (doctor.name);

	[doctor setDepartment: @"--Test: setDepartment"];
	NSLog (doctor.department);
	
	[doctor setDoctorID: 100];	
	NSLog (@"--Test: setDoctorID-%@", [NSString stringWithFormat:@"%d", doctor.doctorID]);

	NSLog (@"Complete");
	NSLog (@"--------");

	[pool drain];
	return 0;
}
