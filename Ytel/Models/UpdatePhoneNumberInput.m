//
//  UpdatePhoneNumberInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "UpdatePhoneNumberInput.h"

@implementation UpdatePhoneNumberInput

/**
* A valid Ytel number (E.164 format).
*/
@synthesize phoneNumber;

/**
* URL requested once the call connects
*/
@synthesize voiceUrl;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Phone number friendly name description
*/
@synthesize friendlyName;

/**
* Post or Get
*/
@synthesize voiceMethod;

/**
* URL requested if the voice URL is not available
*/
@synthesize voiceFallbackUrl;

/**
* Post or Get
*/
@synthesize voiceFallbackMethod;

/**
* callback url after a hangup occurs
*/
@synthesize hangupCallback;

/**
* Post or Get
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
* Post or Get
*/
@synthesize smsMethod;

/**
* URL used if any errors occur during execution of InboundXML from an SMS or at initial request of the SmsUrl.
*/
@synthesize smsFallbackUrl;

/**
* The HTTP method Ytel will use when URL requested if the SmsUrl is not available.
*/
@synthesize smsFallbackMethod;

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