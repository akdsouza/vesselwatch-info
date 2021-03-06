/*
	WSFTerminalLocationResponse.h
	The implementation of properties and methods for the WSFTerminalLocationResponse object.
	Generated by SudzC.com
*/
#import "WSFTerminalLocationResponse.h"

#import "WSFArrayOfGISZoomLocation.h"
@implementation WSFTerminalLocationResponse
	@synthesize TerminalID = _TerminalID;
	@synthesize TerminalSubjectID = _TerminalSubjectID;
	@synthesize RegionID = _RegionID;
	@synthesize TerminalName = _TerminalName;
	@synthesize TerminalAbbrev = _TerminalAbbrev;
	@synthesize SortSeq = _SortSeq;
	@synthesize Latitude = _Latitude;
	@synthesize Longitude = _Longitude;
	@synthesize AddressLineOne = _AddressLineOne;
	@synthesize AddressLineTwo = _AddressLineTwo;
	@synthesize City = _City;
	@synthesize State = _State;
	@synthesize ZipCode = _ZipCode;
	@synthesize Country = _Country;
	@synthesize MapLink = _MapLink;
	@synthesize Directions = _Directions;
	@synthesize DispGISZoomLoc = _DispGISZoomLoc;

	- (id) init
	{
		if(self = [super init])
		{
			self.TerminalName = nil;
			self.TerminalAbbrev = nil;
			self.AddressLineOne = nil;
			self.AddressLineTwo = nil;
			self.City = nil;
			self.State = nil;
			self.ZipCode = nil;
			self.Country = nil;
			self.MapLink = nil;
			self.Directions = nil;
			self.DispGISZoomLoc = [[NSMutableArray alloc] init];

		}
		return self;
	}

	+ (WSFTerminalLocationResponse*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFTerminalLocationResponse*)[[WSFTerminalLocationResponse alloc] initWithNode: node];
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
			self.Latitude = [[Soap getNodeValue: node withName: @"Latitude"] doubleValue];
			self.Longitude = [[Soap getNodeValue: node withName: @"Longitude"] doubleValue];
			self.AddressLineOne = [Soap getNodeValue: node withName: @"AddressLineOne"];
			self.AddressLineTwo = [Soap getNodeValue: node withName: @"AddressLineTwo"];
			self.City = [Soap getNodeValue: node withName: @"City"];
			self.State = [Soap getNodeValue: node withName: @"State"];
			self.ZipCode = [Soap getNodeValue: node withName: @"ZipCode"];
			self.Country = [Soap getNodeValue: node withName: @"Country"];
			self.MapLink = [Soap getNodeValue: node withName: @"MapLink"];
			self.Directions = [Soap getNodeValue: node withName: @"Directions"];
			self.DispGISZoomLoc = [[WSFArrayOfGISZoomLocation createWithNode: [Soap getNode: node withName: @"DispGISZoomLoc"]] object];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"TerminalLocationResponse"];
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
		[s appendFormat: @"<Latitude>%@</Latitude>", [NSString stringWithFormat: @"%f", self.Latitude]];
		[s appendFormat: @"<Longitude>%@</Longitude>", [NSString stringWithFormat: @"%f", self.Longitude]];
		if (self.AddressLineOne != nil) [s appendFormat: @"<AddressLineOne>%@</AddressLineOne>", [[self.AddressLineOne stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.AddressLineTwo != nil) [s appendFormat: @"<AddressLineTwo>%@</AddressLineTwo>", [[self.AddressLineTwo stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.City != nil) [s appendFormat: @"<City>%@</City>", [[self.City stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.State != nil) [s appendFormat: @"<State>%@</State>", [[self.State stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.ZipCode != nil) [s appendFormat: @"<ZipCode>%@</ZipCode>", [[self.ZipCode stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.Country != nil) [s appendFormat: @"<Country>%@</Country>", [[self.Country stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.MapLink != nil) [s appendFormat: @"<MapLink>%@</MapLink>", [[self.MapLink stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.Directions != nil) [s appendFormat: @"<Directions>%@</Directions>", [[self.Directions stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.DispGISZoomLoc != nil && self.DispGISZoomLoc.count > 0) {
			[s appendFormat: @"<DispGISZoomLoc>%@</DispGISZoomLoc>", [WSFArrayOfGISZoomLocation serialize: self.DispGISZoomLoc]];
		} else {
			[s appendString: @"<DispGISZoomLoc/>"];
		}

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFTerminalLocationResponse class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
