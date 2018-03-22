//
//  SendRinglessVMInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SendRinglessVMInput.h"

@implementation SendRinglessVMInput

/**
* A valid Ytel Voice enabled number (E.164 format) that will be initiating the phone call.
*/
@synthesize from;

/**
* A required secondary Caller ID for RVM to work.
*/
@synthesize rVMCallerId;

/**
* A valid number (E.164 format) that will receive the phone call.
*/
@synthesize to;

/**
* The URL requested once the RVM connects. A set of default parameters will be sent here.
*/
@synthesize voiceMailURL;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Specifies the HTTP method used to request the required URL once call connects.
*/
@synthesize method;

/**
* URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished.
*/
@synthesize statusCallBackUrl;

/**
* Specifies the HTTP method used to request the required StatusCallBackUrl once call connects.
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