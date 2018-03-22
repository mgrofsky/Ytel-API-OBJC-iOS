//
//  GroupCallInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "GroupCallInput.h"

@implementation GroupCallInput

/**
* This number to display on Caller ID as calling
*/
@synthesize from;

/**
* Please enter multiple E164 number. You can add max 10 numbers. Add numbers separated with comma. e.g : 1111111111,2222222222
*/
@synthesize to;

/**
* URL requested once the call connects
*/
@synthesize url;

/**
* TODO: Write general description for this method
*/
@synthesize responseType;

/**
* Define the DTMF that the called party should send to bridge the call. Allowed Values : 0-9, #, *
*/
@synthesize groupConfirmKey;

/**
* Specify the audio file you want to play when the called party picks up the call
*/
@synthesize groupConfirmFile;

/**
* Specifies the HTTP method used to request the required URL once call connects.
*/
@synthesize method;

/**
* URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished.
*/
@synthesize statusCallBackUrl;

/**
* Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
*/
@synthesize statusCallBackMethod;

/**
* URL requested if the initial Url parameter fails or encounters an error
*/
@synthesize fallBackUrl;

/**
* Specifies the HTTP method used to request the required FallbackUrl once call connects.
*/
@synthesize fallBackMethod;

/**
* URL that can be requested every 60 seconds during the call to notify of elapsed time and pass other general information.
*/
@synthesize heartBeatUrl;

/**
* Specifies the HTTP method used to request HeartbeatUrl.
*/
@synthesize heartBeatMethod;

/**
* Time (in seconds) we should wait while the call is ringing before canceling the call
*/
@synthesize timeout;

/**
* DTMF Digits to play to the call once it connects. 0-9, #, or *
*/
@synthesize playDtmf;

/**
* Specifies if the caller id will be hidden
*/
@synthesize hideCallerId;

/**
* Specifies if the call should be recorded
*/
@synthesize record;

/**
* Recording parameters will be sent here upon completion
*/
@synthesize recordCallBackUrl;

/**
* Method used to request the RecordCallback URL.
*/
@synthesize recordCallBackMethod;

/**
* Specifies if the call recording should be transcribed
*/
@synthesize transcribe;

/**
* Transcription parameters will be sent here upon completion
*/
@synthesize transcribeCallBackUrl;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

 /**
 * For serialization of enum AudioFormatEnum type property as NSString*
 */
-(id) JSONObjectForGroupConfirmFile
{
     
    return [AudioFormatEnumHelper stringFromAudioFormatEnum:(enum AudioFormatEnum) groupConfirmFile withDefault: nil];

}

/**
 * For deserialization of enum AudioFormatEnum type property from NSString*
 */
 
-(void)setGroupConfirmFileWithNSString:(NSString*) strValue
{
    groupConfirmFile = [AudioFormatEnumHelper audioFormatEnumFromString:(NSString*) strValue];
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
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForStatusCallBackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) statusCallBackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setStatusCallBackMethodWithNSString:(NSString*) strValue
{
    statusCallBackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForFallBackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) fallBackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setFallBackMethodWithNSString:(NSString*) strValue
{
    fallBackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForHeartBeatMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) heartBeatMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setHeartBeatMethodWithNSString:(NSString*) strValue
{
    heartBeatMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForRecordCallBackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) recordCallBackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setRecordCallBackMethodWithNSString:(NSString*) strValue
{
    recordCallBackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


@end