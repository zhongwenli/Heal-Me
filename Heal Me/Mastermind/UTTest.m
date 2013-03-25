/**
 * UTTest.m
 * AUTH: TJIONGAN, Christopher
 * Unit test for Test class
 */

#import <DataStruct/Test.m>

int main (int argc, const char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Test 1: Constructor
	NSLog (@"Test 1: Constructor");
	
	Test *test;
	test = [[Test alloc] init];
	NSLog (@"--Test: init");

	NSLog (@"Complete");
	NSLog (@"--------");

	// Test 2: Accessor	
	NSLog (@"Test 2: Accessor");
		
	[test setType: @"--Test: setType"];
	NSLog (test.type);

	[test setResult: @"--Test: setResult"];
	NSLog (test.result);

	[test setIsSelf: 100];
	NSLog (@"--Test: setIsSelf-%@", [NSString stringWithFormat:@"%d", test.isSelf]);

	[test setTestID: 100];
	
	NSLog (@"--Test: setTestID-%@", [NSString stringWithFormat:@"%d", test.testID]);

	NSLog (@"Complete");
	NSLog (@"--------");

	[pool drain];
	return 0;
}
