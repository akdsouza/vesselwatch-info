/*
	WSFSchedSailingResponse.h
	The interface definition of properties and methods for the WSFSchedSailingResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class WSFArrayOfSchedSailingDateRange;
@class WSFArrayOfSchedJourn;

@interface WSFSchedSailingResponse : SoapObject
{
	int _ScheduleID;
	int _SchedRouteID;
	int _RouteID;
	int _SailingID;
	NSString* _SailingDescription;
	NSString* _SailingNotes;
	int _DisplayColNum;
	NSString* _SailingDir;
	NSString* _DayOpDescription;
	BOOL _DayOpUseForHoliday;
	NSMutableArray* _ActiveDateRanges;
	NSMutableArray* _Journs;
	
}
		
	@property int ScheduleID;
	@property int SchedRouteID;
	@property int RouteID;
	@property int SailingID;
	@property (retain, nonatomic) NSString* SailingDescription;
	@property (retain, nonatomic) NSString* SailingNotes;
	@property int DisplayColNum;
	@property (retain, nonatomic) NSString* SailingDir;
	@property (retain, nonatomic) NSString* DayOpDescription;
	@property BOOL DayOpUseForHoliday;
	@property (retain, nonatomic) NSMutableArray* ActiveDateRanges;
	@property (retain, nonatomic) NSMutableArray* Journs;

	+ (WSFSchedSailingResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end