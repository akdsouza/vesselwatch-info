/*
	WSFArrayOfTerminalLocationResponse.h
	The implementation of properties and methods for the WSFArrayOfTerminalLocationResponse array.
	Generated by SudzC.com
*/
#import "WSFArrayOfTerminalLocationResponse.h"

#import "WSFTerminalLocationResponse.h"
@implementation WSFArrayOfTerminalLocationResponse

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[WSFArrayOfTerminalLocationResponse alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				WSFTerminalLocationResponse* value = [[WSFTerminalLocationResponse createWithNode: child] object];
				if(value != nil) {
					[self addObject: value];
				}
			}
		}
		return self;
	}
	
	+ (NSMutableString*) serialize: (NSArray*) array
	{
		NSMutableString* s = [NSMutableString string];
		for(id item in array) {
			[s appendString: [item serialize: @"TerminalLocationResponse"]];
		}
		return s;
	}
@end