/*
	WSFValidDateRangeResponse.h
	The interface definition of properties and methods for the WSFValidDateRangeResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WSFValidDateRangeResponse : SoapObject
{
	NSDate* _DateFrom;
	NSDate* _DateThru;
	
}
		
	@property (retain, nonatomic) NSDate* DateFrom;
	@property (retain, nonatomic) NSDate* DateThru;

	+ (WSFValidDateRangeResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
