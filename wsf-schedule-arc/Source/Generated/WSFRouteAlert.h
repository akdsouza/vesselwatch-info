/*
	WSFRouteAlert.h
	The interface definition of properties and methods for the WSFRouteAlert object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WSFRouteAlert : SoapObject
{
	int _BulletinID;
	BOOL _BulletinFlag;
	BOOL _CommunicationFlag;
	NSDate* _PublishDate;
	NSString* _AlertDescription;
	NSString* _DisruptionDescription;
	NSString* _AlertFullTitle;
	NSString* _AlertFullText;
	
}
		
	@property int BulletinID;
	@property BOOL BulletinFlag;
	@property BOOL CommunicationFlag;
	@property (retain, nonatomic) NSDate* PublishDate;
	@property (retain, nonatomic) NSString* AlertDescription;
	@property (retain, nonatomic) NSString* DisruptionDescription;
	@property (retain, nonatomic) NSString* AlertFullTitle;
	@property (retain, nonatomic) NSString* AlertFullText;

	+ (WSFRouteAlert*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end