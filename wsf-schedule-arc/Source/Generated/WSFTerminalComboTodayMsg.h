/*
	WSFTerminalComboTodayMsg.h
	The interface definition of properties and methods for the WSFTerminalComboTodayMsg object.
	Generated by SudzC.com
*/

#import "Soap.h"
	

@interface WSFTerminalComboTodayMsg : SoapObject
{
	int _DepartingTerminalID;
	int _ArrivingTerminalID;
	BOOL _OnlyRemainingTimes;
	
}
		
	@property int DepartingTerminalID;
	@property int ArrivingTerminalID;
	@property BOOL OnlyRemainingTimes;

	+ (WSFTerminalComboTodayMsg*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
