/*
	WSFWaitTime.h
	The implementation of properties and methods for the WSFWaitTime object.
	Generated by SudzC.com
*/
#import "WSFWaitTime.h"

@implementation WSFWaitTime
	@synthesize RouteID = _RouteID;
	@synthesize RouteName = _RouteName;
	@synthesize WaitTimeNotes = _WaitTimeNotes;
	@synthesize WaitTimeLastUpdated = _WaitTimeLastUpdated;

	- (id) init
	{
		if(self = [super init])
		{
			self.RouteName = nil;
			self.WaitTimeNotes = nil;
			self.WaitTimeLastUpdated = nil;

		}
		return self;
	}

	+ (WSFWaitTime*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFWaitTime*)[[WSFWaitTime alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.RouteID = [[Soap getNodeValue: node withName: @"RouteID"] intValue];
			self.RouteName = [Soap getNodeValue: node withName: @"RouteName"];
			self.WaitTimeNotes = [Soap getNodeValue: node withName: @"WaitTimeNotes"];
			self.WaitTimeLastUpdated = [Soap dateFromString: [Soap getNodeValue: node withName: @"WaitTimeLastUpdated"]];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"WaitTime"];
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
		if (self.RouteName != nil) [s appendFormat: @"<RouteName>%@</RouteName>", [[self.RouteName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.WaitTimeNotes != nil) [s appendFormat: @"<WaitTimeNotes>%@</WaitTimeNotes>", [[self.WaitTimeNotes stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.WaitTimeLastUpdated != nil) [s appendFormat: @"<WaitTimeLastUpdated>%@</WaitTimeLastUpdated>", [Soap getDateString: self.WaitTimeLastUpdated]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFWaitTime class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
