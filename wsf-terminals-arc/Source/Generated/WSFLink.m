/*
	WSFLink.h
	The implementation of properties and methods for the WSFLink object.
	Generated by SudzC.com
*/
#import "WSFLink.h"

@implementation WSFLink
	@synthesize LinkURL = _LinkURL;
	@synthesize LinkName = _LinkName;
	@synthesize SortSeq = _SortSeq;

	- (id) init
	{
		if(self = [super init])
		{
			self.LinkURL = nil;
			self.LinkName = nil;

		}
		return self;
	}

	+ (WSFLink*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFLink*)[[WSFLink alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.LinkURL = [Soap getNodeValue: node withName: @"LinkURL"];
			self.LinkName = [Soap getNodeValue: node withName: @"LinkName"];
			self.SortSeq = [[Soap getNodeValue: node withName: @"SortSeq"] intValue];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Link"];
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
		if (self.LinkURL != nil) [s appendFormat: @"<LinkURL>%@</LinkURL>", [[self.LinkURL stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.LinkName != nil) [s appendFormat: @"<LinkName>%@</LinkName>", [[self.LinkName stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<SortSeq>%@</SortSeq>", [NSString stringWithFormat: @"%i", self.SortSeq]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFLink class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
