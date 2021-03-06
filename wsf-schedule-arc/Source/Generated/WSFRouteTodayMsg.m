/*
	WSFRouteTodayMsg.h
	The implementation of properties and methods for the WSFRouteTodayMsg object.
	Generated by SudzC.com
*/
#import "WSFRouteTodayMsg.h"

@implementation WSFRouteTodayMsg
	@synthesize RouteID = _RouteID;
	@synthesize OnlyRemainingTimes = _OnlyRemainingTimes;

	- (id) init
	{
		if(self = [super init])
		{

		}
		return self;
	}

	+ (WSFRouteTodayMsg*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFRouteTodayMsg*)[[WSFRouteTodayMsg alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.RouteID = [[Soap getNodeValue: node withName: @"RouteID"] intValue];
			self.OnlyRemainingTimes = [[Soap getNodeValue: node withName: @"OnlyRemainingTimes"] boolValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"RouteTodayMsg"];
	}
  
	- (NSMutableString*) serialize: (NSString*) nodeName
	{
		NSMutableString* s = [NSMutableString string];
		[s appendFormat: @"<%@", nodeName];
		[s appendString: [self serializeAttributes]];
		[s appendString: @">"];
		[s appendString: [self serializeElements]];
		[s appendFormat: @"</%@>", nodeName];
		return s;
	}
	
	- (NSMutableString*) serializeElements
	{
		NSMutableString* s = [super serializeElements];
		[s appendFormat: @"<RouteID>%@</RouteID>", [NSString stringWithFormat: @"%i", self.RouteID]];
		[s appendFormat: @"<OnlyRemainingTimes>%@</OnlyRemainingTimes>", (self.OnlyRemainingTimes)?@"true":@"false"];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFRouteTodayMsg class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
