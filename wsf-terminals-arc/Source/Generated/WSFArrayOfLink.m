/*
	WSFArrayOfLink.h
	The implementation of properties and methods for the WSFArrayOfLink array.
	Generated by SudzC.com
*/
#import "WSFArrayOfLink.h"

#import "WSFLink.h"
@implementation WSFArrayOfLink

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[WSFArrayOfLink alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				WSFLink* value = [[WSFLink createWithNode: child] object];
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
			[s appendString: [item serialize: @"Link"]];
		}
		return s;
	}
@end
