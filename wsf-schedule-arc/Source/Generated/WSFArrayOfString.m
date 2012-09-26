/*
	WSFArrayOfString.h
	The implementation of properties and methods for the WSFArrayOfString array.
	Generated by SudzC.com
*/
#import "WSFArrayOfString.h"

@implementation WSFArrayOfString

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[WSFArrayOfString alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				NSString* value = [child stringValue];
				[self addObject: value];
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [[item stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		}
		return s;
	}
@end