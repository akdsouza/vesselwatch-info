/*
	WSFSchedResponse.h
	The implementation of properties and methods for the WSFSchedResponse object.
	Generated by SudzC.com
*/
#import "WSFSchedResponse.h"

#import "WSFArrayOfInt.h"
#import "WSFArrayOfSchedTerminalCombo.h"
@implementation WSFSchedResponse
	@synthesize ScheduleID = _ScheduleID;
	@synthesize ScheduleName = _ScheduleName;
	@synthesize ScheduleSeason = _ScheduleSeason;
	@synthesize SchedulePDFUrl = _SchedulePDFUrl;
	@synthesize ScheduleStart = _ScheduleStart;
	@synthesize ScheduleEnd = _ScheduleEnd;
	@synthesize AllRoutes = _AllRoutes;
	@synthesize TerminalCombos = _TerminalCombos;

	- (id) init
	{
		if(self = [super init])
		{
			self.ScheduleName = nil;
			self.ScheduleSeason = nil;
			self.SchedulePDFUrl = nil;
			self.ScheduleStart = nil;
			self.ScheduleEnd = nil;
			self.AllRoutes = [[NSMutableArray alloc] init];
			self.TerminalCombos = [[NSMutableArray alloc] init];

		}
		return self;
	}

	+ (WSFSchedResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFSchedResponse*)[[WSFSchedResponse alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.ScheduleID = [[Soap getNodeValue: node withName: @"ScheduleID"] intValue];
			self.ScheduleName = [Soap getNodeValue: node withName: @"ScheduleName"];
			self.ScheduleSeason = [Soap getNodeValue: node withName: @"ScheduleSeason"];
			self.SchedulePDFUrl = [Soap getNodeValue: node withName: @"SchedulePDFUrl"];
			self.ScheduleStart = [Soap dateFromString: [Soap getNodeValue: node withName: @"ScheduleStart"]];
			self.ScheduleEnd = [Soap dateFromString: [Soap getNodeValue: node withName: @"ScheduleEnd"]];
			self.AllRoutes = [[WSFArrayOfInt createWithNode: [Soap getNode: node withName: @"AllRoutes"]] object];
			self.TerminalCombos = [[WSFArrayOfSchedTerminalCombo createWithNode: [Soap getNode: node withName: @"TerminalCombos"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SchedResponse"];
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
		[s appendFormat: @"<ScheduleID>%@</ScheduleID>", [NSString stringWithFormat: @"%i", self.ScheduleID]];
		if (self.ScheduleName != nil) [s appendFormat: @"<ScheduleName>%@</ScheduleName>", [[self.ScheduleName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.ScheduleSeason != nil) [s appendFormat: @"<ScheduleSeason>%@</ScheduleSeason>", [[self.ScheduleSeason stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.SchedulePDFUrl != nil) [s appendFormat: @"<SchedulePDFUrl>%@</SchedulePDFUrl>", [[self.SchedulePDFUrl stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.ScheduleStart != nil) [s appendFormat: @"<ScheduleStart>%@</ScheduleStart>", [Soap getDateString: self.ScheduleStart]];
		if (self.ScheduleEnd != nil) [s appendFormat: @"<ScheduleEnd>%@</ScheduleEnd>", [Soap getDateString: self.ScheduleEnd]];
		if (self.AllRoutes != nil && self.AllRoutes.count > 0) {
			[s appendFormat: @"<AllRoutes>%@</AllRoutes>", [WSFArrayOfInt serialize: self.AllRoutes]];
		} else {
			[s appendString: @"<AllRoutes/>"];
		}
		if (self.TerminalCombos != nil && self.TerminalCombos.count > 0) {
			[s appendFormat: @"<TerminalCombos>%@</TerminalCombos>", [WSFArrayOfSchedTerminalCombo serialize: self.TerminalCombos]];
		} else {
			[s appendString: @"<TerminalCombos/>"];
		}

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFSchedResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
