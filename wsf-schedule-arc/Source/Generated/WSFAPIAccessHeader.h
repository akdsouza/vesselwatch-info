/*
	WSFAPIAccessHeader.h
	The interface definition of properties and methods for the WSFAPIAccessHeader object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WSFAPIAccessHeader : SoapObject
{
	NSString* _APIAccessCode;
	
}
		
	@property (retain, nonatomic) NSString* APIAccessCode;

	+ (WSFAPIAccessHeader*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
