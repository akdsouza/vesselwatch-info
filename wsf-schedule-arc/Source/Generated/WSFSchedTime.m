/*
	WSFSchedTime.h
	The implementation of properties and methods for the WSFSchedTime object.
	Generated by SudzC.com
*/
#import "WSFSchedTime.h"

#import "WSFArrayOfInt.h"
#import "WSFArrayOfInt.h"
@implementation WSFSchedTime
	@synthesize DepartingTime = _DepartingTime;
	@synthesize ArrivingTime = _ArrivingTime;
	@synthesize LoadingRule = _LoadingRule;
	@synthesize VesselID = _VesselID;
	@synthesize VesselName = _VesselName;
	@synthesize VesselHandicapAccessible = _VesselHandicapAccessible;
	@synthesize VesselPositionNum = _VesselPositionNum;
	@synthesize Routes = _Routes;
	@synthesize AnnotationIndexes = _AnnotationIndexes;

	- (id) init
	{
		if(self = [super init])
		{
			self.DepartingTime = nil;
			self.ArrivingTime = nil;
			self.LoadingRule = nil;
			self.VesselName = nil;
			self.Routes = [[NSMutableArray alloc] init];
			self.AnnotationIndexes = [[NSMutableArray alloc] init];

		}
		return self;
	}

	+ (WSFSchedTime*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFSchedTime*)[[WSFSchedTime alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.DepartingTime = [Soap dateFromString: [Soap getNodeValue: node withName: @"DepartingTime"]];
			self.ArrivingTime = [Soap dateFromString: [Soap getNodeValue: node withName: @"ArrivingTime"]];
			self.LoadingRule = [Soap getNodeValue: node withName: @"LoadingRule"];
			self.VesselID = [[Soap getNodeValue: node withName: @"VesselID"] intValue];
			self.VesselName = [Soap getNodeValue: node withName: @"VesselName"];
			self.VesselHandicapAccessible = [[Soap getNodeValue: node withName: @"VesselHandicapAccessible"] boolValue];
			self.VesselPositionNum = [[Soap getNodeValue: node withName: @"VesselPositionNum"] intValue];
			self.Routes = [[WSFArrayOfInt createWithNode: [Soap getNode: node withName: @"Routes"]] object];
			self.AnnotationIndexes = [[WSFArrayOfInt createWithNode: [Soap getNode: node withName: @"AnnotationIndexes"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"SchedTime"];
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
		if (self.DepartingTime != nil) [s appendFormat: @"<DepartingTime>%@</DepartingTime>", [Soap getDateString: self.DepartingTime]];
		if (self.ArrivingTime != nil) [s appendFormat: @"<ArrivingTime>%@</ArrivingTime>", [Soap getDateString: self.ArrivingTime]];
		if (self.LoadingRule != nil) [s appendFormat: @"<LoadingRule>%@</LoadingRule>", [[self.LoadingRule stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<VesselID>%@</VesselID>", [NSString stringWithFormat: @"%i", self.VesselID]];
		if (self.VesselName != nil) [s appendFormat: @"<VesselName>%@</VesselName>", [[self.VesselName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<VesselHandicapAccessible>%@</VesselHandicapAccessible>", (self.VesselHandicapAccessible)?@"true":@"false"];
		[s appendFormat: @"<VesselPositionNum>%@</VesselPositionNum>", [NSString stringWithFormat: @"%i", self.VesselPositionNum]];
		if (self.Routes != nil && self.Routes.count > 0) {
			[s appendFormat: @"<Routes>%@</Routes>", [WSFArrayOfInt serialize: self.Routes]];
		} else {
			[s appendString: @"<Routes/>"];
		}
		if (self.AnnotationIndexes != nil && self.AnnotationIndexes.count > 0) {
			[s appendFormat: @"<AnnotationIndexes>%@</AnnotationIndexes>", [WSFArrayOfInt serialize: self.AnnotationIndexes]];
		} else {
			[s appendString: @"<AnnotationIndexes/>"];
		}

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFSchedTime class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
