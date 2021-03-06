/*
	WSFSchedTerminalCombo.h
	The interface definition of properties and methods for the WSFSchedTerminalCombo object.
	Generated by SudzC.com
*/

#import "Soap.h"
	
@class WSFArrayOfString;
@class WSFArrayOfSchedTime;

@interface WSFSchedTerminalCombo : SoapObject
{
	int _DepartingTerminalID;
	NSString* _DepartingTerminalName;
	int _ArrivingTerminalID;
	NSString* _ArrivingTerminalName;
	NSString* _SailingNotes;
	NSMutableArray* _Annotations;
	NSMutableArray* _Times;
	
}
		
	@property int DepartingTerminalID;
	@property (retain, nonatomic) NSString* DepartingTerminalName;
	@property int ArrivingTerminalID;
	@property (retain, nonatomic) NSString* ArrivingTerminalName;
	@property (retain, nonatomic) NSString* SailingNotes;
	@property (retain, nonatomic) NSMutableArray* Annotations;
	@property (retain, nonatomic) NSMutableArray* Times;

	+ (WSFSchedTerminalCombo*) createWithNode: (CXMLNode*) node;
	- (id) initWithNode: (CXMLNode*) node;
	- (NSMutableString*) serialize;
	- (NSMutableString*) serialize: (NSString*) nodeName;
	- (NSMutableString*) serializeAttributes;
	- (NSMutableString*) serializeElements;

@end
