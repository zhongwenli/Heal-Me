/**
 * UTDose.m
 * AUTH: TJIONGAN, Christopher
 * Unit test for Dose class
 */

#import <DataStruct/Dose.m>

int main (int argc, const char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Test 1: Constructor
	NSLog (@"Test 1: Constructor");
	
	Dose *dose;
	dose = [[Dose alloc] init];
	NSLog (@"--Test: init");
	
	NSLog (@"Complete");
	NSLog (@"--------");	
	
	// Test 2: Accessor	
	NSLog (@"Test 2: Accessor");
		
	[dose setDose: 100];
	NSLog (@"--Test: setDose-%@", [NSString stringWithFormat:@"%f", dose.dose]);
	
	[dose setRemaining: 100];
	NSLog (@"--Test: setRemaining-%@", [NSString stringWithFormat:@"%f", dose.remaining]);
	
	[dose setForm: @"--Test: setForm"];
	NSLog (dose.form);
	
	[dose setInstruction: @"--Test: setInstruction"];
	NSLog (dose.instruction);
	
	[dose setRemark: @"--Test: setRemark"];
	NSLog (dose.remark);

	NSLog (@"Complete");
	NSLog (@"--------");	

	[pool drain];
	return 0;
}
