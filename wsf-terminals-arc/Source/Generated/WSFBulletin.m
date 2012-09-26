/*
	WSFBulletin.h
	The implementation of properties and methods for the WSFBulletin object.
	Generated by SudzC.com
*/
#import "WSFBulletin.h"

@implementation WSFBulletin
	@synthesize BulletinTitle = _BulletinTitle;
	@synthesize BulletinText = _BulletinText;
	@synthesize BulletinSortSeq = _BulletinSortSeq;
	@synthesize BulletinLastUpdated = _BulletinLastUpdated;

	- (id) init
	{
		if(self = [super init])
		{
			self.BulletinTitle = nil;
			self.BulletinText = nil;
			self.BulletinLastUpdated = nil;

		}
		return self;
	}

	+ (WSFBulletin*) createWithNode: (CXMLNode*) node
	{
		if(node == nil) { return nil; }
		return (WSFBulletin*)[[WSFBulletin alloc] initWithNode: node];
	}

	- (id) initWithNode: (CXMLNode*) node {
		if(self = [super initWithNode: node])
		{
			self.BulletinTitle = [Soap getNodeValue: node withName: @"BulletinTitle"];
			self.BulletinText = [Soap getNodeValue: node withName: @"BulletinText"];
			self.BulletinSortSeq = [[Soap getNodeValue: node withName: @"BulletinSortSeq"] intValue];
			self.BulletinLastUpdated = [Soap dateFromString: [Soap getNodeValue: node withName: @"BulletinLastUpdated"]];
		}
		return self;
	}

	- (NSMutableString*) serialize
	{
		return [self serialize: @"Bulletin"];
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
		if (self.BulletinTitle != nil) [s appendFormat: @"<BulletinTitle>%@</BulletinTitle>", [[self.BulletinTitle stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		if (self.BulletinText != nil) [s appendFormat: @"<BulletinText>%@</BulletinText>", [[self.BulletinText stringByReplacingOccurrencesOfString:@"\"" withString:@"&quot;"] stringByReplacingOccurrencesOfString:@"&" withString:@"&amp;"]];
		[s appendFormat: @"<BulletinSortSeq>%@</BulletinSortSeq>", [NSString stringWithFormat: @"%i", self.BulletinSortSeq]];
		if (self.BulletinLastUpdated != nil) [s appendFormat: @"<BulletinLastUpdated>%@</BulletinLastUpdated>", [Soap getDateString: self.BulletinLastUpdated]];

		return s;
	}
	
	- (NSMutableString*) serializeAttributes
	{
		NSMutableString* s = [super serializeAttributes];

		return s;
	}
	
	-(BOOL)isEqual:(id)object{
		if(object != nil && [object isKindOfClass:[WSFBulletin class]]) {
			return [[self serialize] isEqualToString:[object serialize]];
		}
		return NO;
	}
	
	-(NSUInteger)hash{
		return [Soap generateHash:self];

	}

@end
