/*
	WSFSchedResponse.h
	The interface definition of properties and methods for the WSFSchedResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class WSFArrayOfInt;
@class WSFArrayOfSchedTerminalCombo;

@interface WSFSchedResponse : SoapObject
{
	int _ScheduleID;
	NSString* _ScheduleName;
	NSString* _ScheduleSeason;
	NSString* _SchedulePDFUrl;
	NSDate* _ScheduleStart;
	NSDate* _ScheduleEnd;
	NSMutableArray* _AllRoutes;
	NSMutableArray* _TerminalCombos;
	
}
		
	@property int ScheduleID;
	@property (retain, nonatomic) NSString* ScheduleName;
	@property (retain, nonatomic) NSString* ScheduleSeason;
	@property (retain, nonatomic) NSString* SchedulePDFUrl;
	@property (retain, nonatomic) NSDate* ScheduleStart;
	@property (retain, nonatomic) NSDate* ScheduleEnd;
	@property (retain, nonatomic) NSMutableArray* AllRoutes;
	@property (retain, nonatomic) NSMutableArray* TerminalCombos;

	+ (WSFSchedResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
