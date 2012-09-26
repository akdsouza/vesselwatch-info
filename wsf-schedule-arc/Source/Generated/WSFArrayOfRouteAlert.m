/*
	WSFArrayOfRouteAlert.h
	The implementation of properties and methods for the WSFArrayOfRouteAlert array.
	Generated by SudzC.com
*/
#import "WSFArrayOfRouteAlert.h"

#import "WSFRouteAlert.h"
@implementation WSFArrayOfRouteAlert

	+ (id) createWithNode: (CXMLNode*) node
	{
		return [[WSFArrayOfRouteAlert alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node
	{
		if(self = [self init]) {
			for(CXMLElement* child in [node children])
			{
				WSFRouteAlert* value = [[WSFRouteAlert createWithNode: child] object];
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
			[s appendString: [item serialize: @"RouteAlert"]];
		}
		return s;
	}
@end
