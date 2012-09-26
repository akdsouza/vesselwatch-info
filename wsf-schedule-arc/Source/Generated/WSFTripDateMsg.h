/*
	WSFTripDateMsg.h
	The interface definition of properties and methods for the WSFTripDateMsg object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WSFTripDateMsg : SoapObject
{
	NSDate* _TripDate;
	
}
		
	@property (retain, nonatomic) NSDate* TripDate;

	+ (WSFTripDateMsg*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
