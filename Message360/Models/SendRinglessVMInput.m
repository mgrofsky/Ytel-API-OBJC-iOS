//
//  SendRinglessVMInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SendRinglessVMInput.h"

@implementation SendRinglessVMInput

/**
* This number to display on Caller ID as calling
*/
@synthesize from;

/**
* Alternate caller ID required for RVM
*/
@synthesize rVMCallerId;

/**
* To number
*/
@synthesize to;

/**
* URL to an audio file
*/
@synthesize voiceMailURL;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Not currently used in this version
*/
@synthesize method;

/**
* URL to post the status of the Ringless request
*/
@synthesize statusCallBackUrl;

/**
* POST or GET
*/
@synthesize statsCallBackMethod;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.method = [HttpActionEnumHelper httpActionEnumFromString:@"GET"];
    }
    return self;
}

 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) method withDefault:@"GET"];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setMethodWithNSString:(NSString*) strValue
{
    method = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForStatsCallBackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) statsCallBackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setStatsCallBackMethodWithNSString:(NSString*) strValue
{
    statsCallBackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


@end