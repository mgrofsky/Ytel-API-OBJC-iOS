//
//  InterruptedCallInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "InterruptedCallInput.h"

@implementation InterruptedCallInput

/**
* Call SId
*/
@synthesize callSid;

/**
* Response type format xml or json
*/
@synthesize responseType;

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

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) method withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setMethodWithNSString:(NSString*) strValue
{
    method = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum InterruptedCallStatusEnum type property as NSString*
 */
-(id) JSONObjectForStatus
{
     
    return [InterruptedCallStatusEnumHelper stringFromInterruptedCallStatusEnum:(enum InterruptedCallStatusEnum) status withDefault: nil];

}

/**
 * For deserialization of enum InterruptedCallStatusEnum type property from NSString*
 */
 
-(void)setStatusWithNSString:(NSString*) strValue
{
    status = [InterruptedCallStatusEnumHelper interruptedCallStatusEnumFromString:(NSString*) strValue];
}


@end