/*
	WSFArrayOfSchedTimeTerminal.h
	The implementation of properties and methods for the WSFArrayOfSchedTimeTerminal array.
	Generated by SudzC.com
*/
#import "WSFArrayOfSchedTimeTerminal.h"

#import "WSFSchedTimeTerminal.h"
@implementation WSFArrayOfSchedTimeTerminal

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[WSFArrayOfSchedTimeTerminal alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				WSFSchedTimeTerminal* value = [[WSFSchedTimeTerminal createWithNode: child] object];
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
			[s appendString: [item serialize: @"SchedTimeTerminal"]];
		}
		return s;
	}
@end
