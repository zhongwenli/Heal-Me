/**
 * Multimedia.h
 * AUTH: TJIONGAN, Christopher
 */

#import <Foundation/Foundation.h>

@interface Multimedia: NSObject
{
	NSString *url;
	NSString *type;

	int multimediaID;
}

@property (retain) NSString *url;
@property (retain) NSString *type;

@property int multimediaID;

@end
