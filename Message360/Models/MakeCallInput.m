//
//  MakeCallInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "MakeCallInput.h"

@implementation MakeCallInput

/**
* This number to display on Caller ID as calling
*/
@synthesize from;

/**
* To number
*/
@synthesize to;

/**
* URL requested once the call connects
*/
@synthesize url;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Specifies the HTTP method used to request the required URL once call connects.
*/
@synthesize method;

/**
* specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
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
* URL that can be requested every 60 seconds during the call to notify of elapsed tim
*/
@synthesize heartBeatUrl;

/**
* Specifies the HTTP method used to request HeartbeatUrl.
*/
@synthesize heartBeatMethod;

/**
* Time (in seconds) Message360 should wait while the call is ringing before canceling the call
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

/**
* How Message360 should handle the receiving numbers voicemail machine
*/
@synthesize ifMachine;

/**
* URL requested when IfMachine=continue
*/
@synthesize ifMachineUrl;

/**
* Method used to request the IfMachineUrl.
*/
@synthesize ifMachineMethod;

/**
* Specify if survey should be enable or not
*/
@synthesize feedback;

/**
* The unique identifier for the survey.
*/
@synthesize surveyId;

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


 /**
 * For serialization of enum IfMachineEnum type property as NSString*
 */
-(id) JSONObjectForIfMachine
{
     
    return [IfMachineEnumHelper stringFromIfMachineEnum:(enum IfMachineEnum) ifMachine withDefault: nil];

}

/**
 * For deserialization of enum IfMachineEnum type property from NSString*
 */
 
-(void)setIfMachineWithNSString:(NSString*) strValue
{
    ifMachine = [IfMachineEnumHelper ifMachineEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForIfMachineMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) ifMachineMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setIfMachineMethodWithNSString:(NSString*) strValue
{
    ifMachineMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


@end