/*
	WSFSchedTimeAdjResponse.h
	The interface definition of properties and methods for the WSFSchedTimeAdjResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class WSFSchedSailingDateRange;
@class WSFArrayOfSchedAnnotation;

@interface WSFSchedTimeAdjResponse : SoapObject
{
	int _ScheduleID;
	int _SchedRouteID;
	int _RouteID;
	NSString* _RouteDescription;
	int _RouteSortSeq;
	int _SailingID;
	NSString* _SailingDescription;
	WSFSchedSailingDateRange* _ActiveSailingDateRange;
	NSString* _SailingDir;
	int _JourneyID;
	int _VesselID;
	NSString* _VesselName;
	BOOL _VesselHandicapAccessible;
	int _VesselPositionNum;
	int _JourneyTerminalID;
	int _TerminalID;
	NSString* _TerminalDescription;
	NSString* _TerminalBriefDescription;
	NSDate* _TimeToAdj;
	NSDate* _AdjDateFrom;
	NSDate* _AdjDateThru;
	BOOL _TidalAdj;
	int _EventID;
	NSString* _EventDescription;
	NSString* _DepArrIndicator;
	NSString* _AdjType;
	NSMutableArray* _Annotations;
	
}
		
	@property int ScheduleID;
	@property int SchedRouteID;
	@property int RouteID;
	@property (retain, nonatomic) NSString* RouteDescription;
	@property int RouteSortSeq;
	@property int SailingID;
	@property (retain, nonatomic) NSString* SailingDescription;
	@property (retain, nonatomic) WSFSchedSailingDateRange* ActiveSailingDateRange;
	@property (retain, nonatomic) NSString* SailingDir;
	@property int JourneyID;
	@property int VesselID;
	@property (retain, nonatomic) NSString* VesselName;
	@property BOOL VesselHandicapAccessible;
	@property int VesselPositionNum;
	@property int JourneyTerminalID;
	@property int TerminalID;
	@property (retain, nonatomic) NSString* TerminalDescription;
	@property (retain, nonatomic) NSString* TerminalBriefDescription;
	@property (retain, nonatomic) NSDate* TimeToAdj;
	@property (retain, nonatomic) NSDate* AdjDateFrom;
	@property (retain, nonatomic) NSDate* AdjDateThru;
	@property BOOL TidalAdj;
	@property int EventID;
	@property (retain, nonatomic) NSString* EventDescription;
	@property (retain, nonatomic) NSString* DepArrIndicator;
	@property (retain, nonatomic) NSString* AdjType;
	@property (retain, nonatomic) NSMutableArray* Annotations;

	+ (WSFSchedTimeAdjResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
