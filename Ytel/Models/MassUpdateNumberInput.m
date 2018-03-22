//
//  MassUpdateNumberInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "MassUpdateNumberInput.h"

@implementation MassUpdateNumberInput

/**
* A valid comma(,) separated Ytel numbers. (E.164 format).
*/
@synthesize phoneNumber;

/**
* The URL returning InboundXML incoming calls should execute when connected.
*/
@synthesize voiceUrl;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* A human-readable value for labeling the number.
*/
@synthesize friendlyName;

/**
* Specifies the HTTP method used to request the VoiceUrl once incoming call connects.
*/
@synthesize voiceMethod;

/**
* URL used if any errors occur during execution of InboundXML on a call or at initial request of the voice url
*/
@synthesize voiceFallbackUrl;

/**
* Specifies the HTTP method used to request the VoiceFallbackUrl once incoming call connects.
*/
@synthesize voiceFallbackMethod;

/**
* URL that can be requested to receive notification when and how incoming call has ended.
*/
@synthesize hangupCallback;

/**
* The HTTP method Ytel will use when requesting the HangupCallback URL.
*/
@synthesize hangupCallbackMethod;

/**
* URL that can be used to monitor the phone number.
*/
@synthesize heartbeatUrl;

/**
* The HTTP method Ytel will use when requesting the HeartbeatUrl.
*/
@synthesize heartbeatMethod;

/**
* URL requested when an SMS is received.
*/
@synthesize smsUrl;

/**
* The HTTP method Ytel will use when requesting the SmsUrl.
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