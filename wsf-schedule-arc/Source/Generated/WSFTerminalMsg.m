/*
	WSFTerminalMsg.h
	The implementation of properties and methods for the WSFTerminalMsg object.
	Generated by SudzC.com
*/
#import "WSFTerminalMsg.h"

@implementation WSFTerminalMsg
	@synthesize TripDate = _TripDate;
	@synthesize TerminalID = _TerminalID;

	- (id) init
	{
		if(self = [super init])
		{
			self.TripDate = nil;

		}
		return self;
	}

	+ (WSFTerminalMsg*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFTerminalMsg*)[[WSFTerminalMsg alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.TripDate = [Soap dateFromString: [Soap getNodeValue: node withName: @"TripDate"]];
			self.TerminalID = [[Soap getNodeValue: node withName: @"TerminalID"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"TerminalMsg"];
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
		if (self.TripDate != nil) [s appendFormat: @"<TripDate>%@</TripDate>", [Soap getDateString: self.TripDate]];
		[s appendFormat: @"<TerminalID>%@</TerminalID>", [NSString stringWithFormat: @"%i", self.TerminalID]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFTerminalMsg class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
