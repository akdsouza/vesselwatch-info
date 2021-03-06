/*
	WSFBulletin.h
	The interface definition of properties and methods for the WSFBulletin object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WSFBulletin : SoapObject
{
	NSString* _BulletinTitle;
	NSString* _BulletinText;
	int _BulletinSortSeq;
	NSDate* _BulletinLastUpdated;
	
}
		
	@property (retain, nonatomic) NSString* BulletinTitle;
	@property (retain, nonatomic) NSString* BulletinText;
	@property int BulletinSortSeq;
	@property (retain, nonatomic) NSDate* BulletinLastUpdated;

	+ (WSFBulletin*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
