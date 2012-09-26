/*
	WSFTerminalWaitTimeResponse.h
	The interface definition of properties and methods for the WSFTerminalWaitTimeResponse object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class WSFArrayOfWaitTime;

@interface WSFTerminalWaitTimeResponse : SoapObject
{
	int _TerminalID;
	int _TerminalSubjectID;
	int _RegionID;
	NSString* _TerminalName;
	NSString* _TerminalAbbrev;
	int _SortSeq;
	NSMutableArray* _WaitTimes;
	
}
		
	@property int TerminalID;
	@property int TerminalSubjectID;
	@property int RegionID;
	@property (retain, nonatomic) NSString* TerminalName;
	@property (retain, nonatomic) NSString* TerminalAbbrev;
	@property int SortSeq;
	@property (retain, nonatomic) NSMutableArray* WaitTimes;

	+ (WSFTerminalWaitTimeResponse*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
