//
//  CreateInterruptedCallInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateInterruptedCallInput.h"

@implementation CreateInterruptedCallInput

/**
* Call SId
*/
@synthesize callSid;

/**
* URL the in-progress call will be redirected to
*/
@synthesize url;

/**
* The method used to request the above Url parameter
*/
@synthesize method;

/**
* Status to set the in-progress call to
*/
@synthesize status;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum HttpAction type property as NSString*
 */
-(id) JSONObjectForMethod
{
     
    return [HttpActionHelper stringFromHttpAction:(enum HttpAction) method withDefault: nil];

}

/**
 * For deserialization of enum HttpAction type property from NSString*
 */
 
-(void)setMethodWithNSString:(NSString*) strValue
{
    method = [HttpActionHelper httpActionFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum InterruptedCallStatus type property as NSString*
 */
-(id) JSONObjectForStatus
{
     
    return [InterruptedCallStatusHelper stringFromInterruptedCallStatus:(enum InterruptedCallStatus) status withDefault: nil];

}

/**
 * For deserialization of enum InterruptedCallStatus type property from NSString*
 */
 
-(void)setStatusWithNSString:(NSString*) strValue
{
    status = [InterruptedCallStatusHelper interruptedCallStatusFromString:(NSString*) strValue];
}


@end