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
 * For serialization of enum HttpAction type property as NSString*
 */
-(id) JSONObjectForVoiceMethod
{
     
    return [HttpActionHelper stringFromHttpAction:(enum HttpAction) voiceMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpAction type property from NSString*
 */
 
-(void)setVoiceMethodWithNSString:(NSString*) strValue
{
    voiceMethod = [HttpActionHelper httpActionFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpAction type property as NSString*
 */
-(id) JSONObjectForVoiceFallbackMethod
{
     
    return [HttpActionHelper stringFromHttpAction:(enum HttpAction) voiceFallbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpAction type property from NSString*
 */
 
-(void)setVoiceFallbackMethodWithNSString:(NSString*) strValue
{
    voiceFallbackMethod = [HttpActionHelper httpActionFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpAction type property as NSString*
 */
-(id) JSONObjectForHangupCallbackMethod
{
     
    return [HttpActionHelper stringFromHttpAction:(enum HttpAction) hangupCallbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpAction type property from NSString*
 */
 
-(void)setHangupCallbackMethodWithNSString:(NSString*) strValue
{
    hangupCallbackMethod = [HttpActionHelper httpActionFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpAction type property as NSString*
 */
-(id) JSONObjectForHeartbeatMethod
{
     
    return [HttpActionHelper stringFromHttpAction:(enum HttpAction) heartbeatMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpAction type property from NSString*
 */
 
-(void)setHeartbeatMethodWithNSString:(NSString*) strValue
{
    heartbeatMethod = [HttpActionHelper httpActionFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpAction type property as NSString*
 */
-(id) JSONObjectForSmsMethod
{
     
    return [HttpActionHelper stringFromHttpAction:(enum HttpAction) smsMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpAction type property from NSString*
 */
 
-(void)setSmsMethodWithNSString:(NSString*) strValue
{
    smsMethod = [HttpActionHelper httpActionFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpAction type property as NSString*
 */
-(id) JSONObjectForSmsFallbackMethod
{
     
    return [HttpActionHelper stringFromHttpAction:(enum HttpAction) smsFallbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpAction type property from NSString*
 */
 
-(void)setSmsFallbackMethodWithNSString:(NSString*) strValue
{
    smsFallbackMethod = [HttpActionHelper httpActionFromString:(NSString*) strValue];
}


@end