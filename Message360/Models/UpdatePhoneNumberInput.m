//
//  UpdatePhoneNumberInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "UpdatePhoneNumberInput.h"

@implementation UpdatePhoneNumberInput

/**
* TODO: Write general description for this method
*/
@synthesize phoneNumber;

/**
* TODO: Write general description for this method
*/
@synthesize friendlyName;

/**
* URL requested once the call connects
*/
@synthesize voiceUrl;

/**
* TODO: Write general description for this method
*/
@synthesize voiceMethod;

/**
* URL requested if the voice URL is not available
*/
@synthesize voiceFallbackUrl;

/**
* TODO: Write general description for this method
*/
@synthesize voiceFallbackMethod;

/**
* TODO: Write general description for this method
*/
@synthesize hangupCallback;

/**
* TODO: Write general description for this method
*/
@synthesize hangupCallbackMethod;

/**
* URL requested once the call connects
*/
@synthesize heartbeatUrl;

/**
* URL that can be requested every 60 seconds during the call to notify of elapsed time
*/
@synthesize heartbeatMethod;

/**
* URL requested when an SMS is received
*/
@synthesize smsUrl;

/**
* TODO: Write general description for this method
*/
@synthesize smsMethod;

/**
* URL requested once the call connects
*/
@synthesize smsFallbackUrl;

/**
* URL requested if the sms URL is not available
*/
@synthesize smsFallbackMethod;

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
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForVoiceMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) voiceMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setVoiceMethodWithNSString:(NSString*) strValue
{
    voiceMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForVoiceFallbackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) voiceFallbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setVoiceFallbackMethodWithNSString:(NSString*) strValue
{
    voiceFallbackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForHangupCallbackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) hangupCallbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setHangupCallbackMethodWithNSString:(NSString*) strValue
{
    hangupCallbackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForHeartbeatMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) heartbeatMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setHeartbeatMethodWithNSString:(NSString*) strValue
{
    heartbeatMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForSmsMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) smsMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setSmsMethodWithNSString:(NSString*) strValue
{
    smsMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForSmsFallbackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) smsFallbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setSmsFallbackMethodWithNSString:(NSString*) strValue
{
    smsFallbackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


@end