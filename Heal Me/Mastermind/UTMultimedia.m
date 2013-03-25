/**
 * UTMultimedia.m
 * AUTH: TJIONGAN, Christopher
 * Unit test for Multimedia class
 */

#import <DataStruct/Multimedia.m>

int main (int argc, const char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Test 1: Constructor
	NSLog (@"Test 1: Constructor");
	
	Multimedia *multimedia;
	multimedia = [[Multimedia alloc] init];
	NSLog (@"--Test: init");

	NSLog (@"Complete");
	NSLog (@"--------");
	
	// Test 2: Accessor	
	NSLog (@"Test 2: Accessor");
		
	[multimedia setUrl: @"--Test: setUrl"];
	NSLog (multimedia.url);
	
	[multimedia setType: @"--Test: setType"];
	NSLog (multimedia.type);
	
	[multimedia setMultimediaID: 100];
	NSLog (@"--Test: setMultimediaID-%@", [NSString stringWithFormat:@"%d", multimedia.multimediaID]);

	NSLog (@"Complete");
	NSLog (@"--------");

	[pool drain];
	return 0;
}
