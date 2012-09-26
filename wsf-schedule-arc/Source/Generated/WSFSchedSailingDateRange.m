/*
	WSFSchedSailingDateRange.h
	The implementation of properties and methods for the WSFSchedSailingDateRange object.
	Generated by SudzC.com
*/
#import "WSFSchedSailingDateRange.h"

@implementation WSFSchedSailingDateRange
	@synthesize DateFrom = _DateFrom;
	@synthesize DateThru = _DateThru;
	@synthesize EventID = _EventID;
	@synthesize EventDescription = _EventDescription;

	- (id) init
	{
		if(self = [super init])
		{
			self.DateFrom = nil;
			self.DateThru = nil;
			self.EventDescription = nil;

		}
		return self;
	}

	+ (WSFSchedSailingDateRange*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFSchedSailingDateRange*)[[WSFSchedSailingDateRange alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.DateFrom = [Soap dateFromString: [Soap getNodeValue: node withName: @"DateFrom"]];
			self.DateThru = [Soap dateFromString: [Soap getNodeValue: node withName: @"DateThru"]];
			self.EventID = [[Soap getNodeValue: node withName: @"EventID"] intValue];
			self.EventDescription = [Soap getNodeValue: node withName: @"EventDescription"];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SchedSailingDateRange"];
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

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFSchedSailingDateRange class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end