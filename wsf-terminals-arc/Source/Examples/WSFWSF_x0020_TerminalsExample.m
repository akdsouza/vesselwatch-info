/*
	WSFWSF_x0020_TerminalsExample.m
	Provides example and test runs the service's proxy methods.
	Generated by SudzC.com
*/
#import "WSFWSF_x0020_TerminalsExample.h"
#import "WSFWSF_x0020_Terminals.h"

@implementation WSFWSF_x0020_TerminalsExample

- (void)run {
	// Create the service
	WSFWSF_x0020_Terminals* service = [WSFWSF_x0020_Terminals service];
	service.logging = YES;
	// service.username = @"username";
	// service.password = @"password";
	

	// Returns NSMutableArray*. Provides a basic level of detail about each terminal.  This web method is cached.
	[service GetAllTerminalBasicDetails:self action:@selector(GetAllTerminalBasicDetailsHandler:)];

	// Returns NSMutableArray*. Provides the most current bulletin information associated with each terminal.  This web method is cached.
	[service GetAllTerminalBulletins:self action:@selector(GetAllTerminalBulletinsHandler:)];

	// Returns NSMutableArray*. Retrieves the location of each terminal.  This web method is cached.
	[service GetAllTerminalLocations:self action:@selector(GetAllTerminalLocationsHandler:)];

	// Returns NSMutableArray*. Describes transportation options for each terminal.  This web method is cached.
	[service GetAllTerminalTransportationOptions:self action:@selector(GetAllTerminalTransportationOptionsHandler:)];

	// Returns NSMutableArray*. Provides a verbose level of detail about each terminal.  This web method is cached.
	[service GetAllTerminalVerboseDetails:self action:@selector(GetAllTerminalVerboseDetailsHandler:)];

	// Returns NSMutableArray*. Provides the most current wait time information associated with each terminal.  This web method is cached.
	[service GetAllTerminalWaitTimes:self action:@selector(GetAllTerminalWaitTimesHandler:)];

	// Returns NSDate*. Most web methods in this service are cached.  If you are also using caching in your user interface, it may be helpful to know the date and time that the cache was last flushed in this web service.
	[service GetCacheFlushDate:self action:@selector(GetCacheFlushDateHandler:)];

	// Returns WSFTerminalBasicResponse*. Provides a basic level of detail about a specific terminal.  This web method is cached.
	[service GetSpecificTerminalBasicDetail:self action:@selector(GetSpecificTerminalBasicDetailHandler:) request: [[WSFTerminalMsg alloc] init]];

	// Returns WSFTerminalBulletinResponse*. Provides the most current bulletin information associated with a specific terminal.  This web method is cached.
	[service GetSpecificTerminalBulletin:self action:@selector(GetSpecificTerminalBulletinHandler:) request: [[WSFTerminalMsg alloc] init]];

	// Returns WSFTerminalLocationResponse*. Retrieves the location of a specific terminal.  This web method is cached.
	[service GetSpecificTerminalLocation:self action:@selector(GetSpecificTerminalLocationHandler:) request: [[WSFTerminalMsg alloc] init]];

	// Returns WSFTerminalTransportationResponse*. Describes transportation options for a specific terminal.  This web method is cached.
	[service GetSpecificTerminalTransportationOption:self action:@selector(GetSpecificTerminalTransportationOptionHandler:) request: [[WSFTerminalMsg alloc] init]];

	// Returns WSFTerminalVerboseResponse*. Provides a verbose level of detail about a specific terminal.  This web method is cached.
	[service GetSpecificTerminalVerboseDetail:self action:@selector(GetSpecificTerminalVerboseDetailHandler:) request: [[WSFTerminalMsg alloc] init]];

	// Returns WSFTerminalWaitTimeResponse*. Provides the most current wait time information associated with a specific terminal.  This web method is cached.
	[service GetSpecificTerminalWaitTime:self action:@selector(GetSpecificTerminalWaitTimeHandler:) request: [[WSFTerminalMsg alloc] init]];
}

	

// Handle the response from GetAllTerminalBasicDetails.
		
- (void) GetAllTerminalBasicDetailsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetAllTerminalBasicDetails returned the value: %@", result);
			
}
	

// Handle the response from GetAllTerminalBulletins.
		
- (void) GetAllTerminalBulletinsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetAllTerminalBulletins returned the value: %@", result);
			
}
	

// Handle the response from GetAllTerminalLocations.
		
- (void) GetAllTerminalLocationsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetAllTerminalLocations returned the value: %@", result);
			
}
	

// Handle the response from GetAllTerminalTransportationOptions.
		
- (void) GetAllTerminalTransportationOptionsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetAllTerminalTransportationOptions returned the value: %@", result);
			
}
	

// Handle the response from GetAllTerminalVerboseDetails.
		
- (void) GetAllTerminalVerboseDetailsHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetAllTerminalVerboseDetails returned the value: %@", result);
			
}
	

// Handle the response from GetAllTerminalWaitTimes.
		
- (void) GetAllTerminalWaitTimesHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSMutableArray* result
		NSMutableArray* result = (NSMutableArray*)value;
	NSLog(@"GetAllTerminalWaitTimes returned the value: %@", result);
			
}
	

// Handle the response from GetCacheFlushDate.
		
- (void) GetCacheFlushDateHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the NSDate* result
		NSDate* result = (NSDate*)value;
	NSLog(@"GetCacheFlushDate returned the value: %@", result);
			
}
	

// Handle the response from GetSpecificTerminalBasicDetail.
		
- (void) GetSpecificTerminalBasicDetailHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the WSFTerminalBasicResponse* result
		WSFTerminalBasicResponse* result = (WSFTerminalBasicResponse*)value;
	NSLog(@"GetSpecificTerminalBasicDetail returned the value: %@", result);
			
}
	

// Handle the response from GetSpecificTerminalBulletin.
		
- (void) GetSpecificTerminalBulletinHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the WSFTerminalBulletinResponse* result
		WSFTerminalBulletinResponse* result = (WSFTerminalBulletinResponse*)value;
	NSLog(@"GetSpecificTerminalBulletin returned the value: %@", result);
			
}
	

// Handle the response from GetSpecificTerminalLocation.
		
- (void) GetSpecificTerminalLocationHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the WSFTerminalLocationResponse* result
		WSFTerminalLocationResponse* result = (WSFTerminalLocationResponse*)value;
	NSLog(@"GetSpecificTerminalLocation returned the value: %@", result);
			
}
	

// Handle the response from GetSpecificTerminalTransportationOption.
		
- (void) GetSpecificTerminalTransportationOptionHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the WSFTerminalTransportationResponse* result
		WSFTerminalTransportationResponse* result = (WSFTerminalTransportationResponse*)value;
	NSLog(@"GetSpecificTerminalTransportationOption returned the value: %@", result);
			
}
	

// Handle the response from GetSpecificTerminalVerboseDetail.
		
- (void) GetSpecificTerminalVerboseDetailHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the WSFTerminalVerboseResponse* result
		WSFTerminalVerboseResponse* result = (WSFTerminalVerboseResponse*)value;
	NSLog(@"GetSpecificTerminalVerboseDetail returned the value: %@", result);
			
}
	

// Handle the response from GetSpecificTerminalWaitTime.
		
- (void) GetSpecificTerminalWaitTimeHandler: (id) value {

	// Handle errors
	if([value isKindOfClass:[NSError class]]) {
		NSLog(@"%@", value);
		return;
	}

	// Handle faults
	if([value isKindOfClass:[SoapFault class]]) {
		NSLog(@"%@", value);
		return;
	}				
			

	// Do something with the WSFTerminalWaitTimeResponse* result
		WSFTerminalWaitTimeResponse* result = (WSFTerminalWaitTimeResponse*)value;
	NSLog(@"GetSpecificTerminalWaitTime returned the value: %@", result);
			
}
	

@end
		