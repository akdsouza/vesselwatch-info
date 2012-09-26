/*
	WSFTerminalBasicResponse.h
	The implementation of properties and methods for the WSFTerminalBasicResponse object.
	Generated by SudzC.com
*/
#import "WSFTerminalBasicResponse.h"

@implementation WSFTerminalBasicResponse
	@synthesize TerminalID = _TerminalID;
	@synthesize TerminalSubjectID = _TerminalSubjectID;
	@synthesize RegionID = _RegionID;
	@synthesize TerminalName = _TerminalName;
	@synthesize TerminalAbbrev = _TerminalAbbrev;
	@synthesize SortSeq = _SortSeq;
	@synthesize OverheadPassengerLoading = _OverheadPassengerLoading;
	@synthesize Elevator = _Elevator;
	@synthesize WaitingRoom = _WaitingRoom;
	@synthesize FoodService = _FoodService;
	@synthesize Restroom = _Restroom;

	- (id) init
	{
		if(self = [super init])
		{
			self.TerminalName = nil;
			self.TerminalAbbrev = nil;

		}
		return self;
	}

	+ (WSFTerminalBasicResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFTerminalBasicResponse*)[[WSFTerminalBasicResponse alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.TerminalID = [[Soap getNodeValue: node withName: @"TerminalID"] intValue];
			self.TerminalSubjectID = [[Soap getNodeValue: node withName: @"TerminalSubjectID"] intValue];
			self.RegionID = [[Soap getNodeValue: node withName: @"RegionID"] intValue];
			self.TerminalName = [Soap getNodeValue: node withName: @"TerminalName"];
			self.TerminalAbbrev = [Soap getNodeValue: node withName: @"TerminalAbbrev"];
			self.SortSeq = [[Soap getNodeValue: node withName: @"SortSeq"] intValue];
			self.OverheadPassengerLoading = [[Soap getNodeValue: node withName: @"OverheadPassengerLoading"] boolValue];
			self.Elevator = [[Soap getNodeValue: node withName: @"Elevator"] boolValue];
			self.WaitingRoom = [[Soap getNodeValue: node withName: @"WaitingRoom"] boolValue];
			self.FoodService = [[Soap getNodeValue: node withName: @"FoodService"] boolValue];
			self.Restroom = [[Soap getNodeValue: node withName: @"Restroom"] boolValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"TerminalBasicResponse"];
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
		[s appendFormat: @"<TerminalID>%@</TerminalID>", [NSString stringWithFormat: @"%i", self.TerminalID]];
		[s appendFormat: @"<TerminalSubjectID>%@</TerminalSubjectID>", [NSString stringWithFormat: @"%i", self.TerminalSubjectID]];
		[s appendFormat: @"<RegionID>%@</RegionID>", [NSString stringWithFormat: @"%i", self.RegionID]];
		if (self.TerminalName != nil) [s appendFormat: @"<TerminalName>%@</TerminalName>", [[self.TerminalName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.TerminalAbbrev != nil) [s appendFormat: @"<TerminalAbbrev>%@</TerminalAbbrev>", [[self.TerminalAbbrev stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<SortSeq>%@</SortSeq>", [NSString stringWithFormat: @"%i", self.SortSeq]];
		[s appendFormat: @"<OverheadPassengerLoading>%@</OverheadPassengerLoading>", (self.OverheadPassengerLoading)?@"true":@"false"];
		[s appendFormat: @"<Elevator>%@</Elevator>", (self.Elevator)?@"true":@"false"];
		[s appendFormat: @"<WaitingRoom>%@</WaitingRoom>", (self.WaitingRoom)?@"true":@"false"];
		[s appendFormat: @"<FoodService>%@</FoodService>", (self.FoodService)?@"true":@"false"];
		[s appendFormat: @"<Restroom>%@</Restroom>", (self.Restroom)?@"true":@"false"];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFTerminalBasicResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end