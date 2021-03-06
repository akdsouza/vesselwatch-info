/*
	WSFSchedRouteAdj.h
	The implementation of properties and methods for the WSFSchedRouteAdj object.
	Generated by SudzC.com
*/
#import "WSFSchedRouteAdj.h"

@implementation WSFSchedRouteAdj
	@synthesize DateFrom = _DateFrom;
	@synthesize DateThru = _DateThru;
	@synthesize EventID = _EventID;
	@synthesize EventDescription = _EventDescription;
	@synthesize AdjType = _AdjType;
	@synthesize ReplacedBySchedRouteID = _ReplacedBySchedRouteID;

	- (id) init
	{
		if(self = [super init])
		{
			self.DateFrom = nil;
			self.DateThru = nil;
			self.EventDescription = nil;
			self.AdjType = nil;

		}
		return self;
	}

	+ (WSFSchedRouteAdj*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFSchedRouteAdj*)[[WSFSchedRouteAdj alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.DateFrom = [Soap dateFromString: [Soap getNodeValue: node withName: @"DateFrom"]];
			self.DateThru = [Soap dateFromString: [Soap getNodeValue: node withName: @"DateThru"]];
			self.EventID = [[Soap getNodeValue: node withName: @"EventID"] intValue];
			self.EventDescription = [Soap getNodeValue: node withName: @"EventDescription"];
			self.AdjType = [Soap getNodeValue: node withName: @"AdjType"];
			self.ReplacedBySchedRouteID = [[Soap getNodeValue: node withName: @"ReplacedBySchedRouteID"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SchedRouteAdj"];
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
		if (self.DateFrom != nil) [s appendFormat: @"<DateFrom>%@</DateFrom>", [Soap getDateString: self.DateFrom]];
		if (self.DateThru != nil) [s appendFormat: @"<DateThru>%@</DateThru>", [Soap getDateString: self.DateThru]];
		[s appendFormat: @"<EventID>%@</EventID>", [NSString stringWithFormat: @"%i", self.EventID]];
		if (self.EventDescription != nil) [s appendFormat: @"<EventDescription>%@</EventDescription>", [[self.EventDescription stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.AdjType != nil) [s appendFormat: @"<AdjType>%@</AdjType>", [[self.AdjType stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<ReplacedBySchedRouteID>%@</ReplacedBySchedRouteID>", [NSString stringWithFormat: @"%i", self.ReplacedBySchedRouteID]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFSchedRouteAdj class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
