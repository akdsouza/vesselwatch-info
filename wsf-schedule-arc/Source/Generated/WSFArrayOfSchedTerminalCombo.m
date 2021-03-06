/*
	WSFArrayOfSchedTerminalCombo.h
	The implementation of properties and methods for the WSFArrayOfSchedTerminalCombo array.
	Generated by SudzC.com
*/
#import "WSFArrayOfSchedTerminalCombo.h"

#import "WSFSchedTerminalCombo.h"
@implementation WSFArrayOfSchedTerminalCombo

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[WSFArrayOfSchedTerminalCombo alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				WSFSchedTerminalCombo* value = [[WSFSchedTerminalCombo createWithNode: child] object];
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
			[s appendString: [item serialize: @"SchedTerminalCombo"]];
		}
		return s;
	}
@end
