/*
	WSFRouteMsg.h
	The interface definition of properties and methods for the WSFRouteMsg object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WSFRouteMsg : SoapObject
{
	NSDate* _TripDate;
	int _RouteID;
	
}
		
	@property (retain, nonatomic) NSDate* TripDate;
	@property int RouteID;

	+ (WSFRouteMsg*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end