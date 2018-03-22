//
//  CreateConferenceInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateConferenceInput.h"

@implementation CreateConferenceInput

/**
* A valid 10-digit number (E.164 format) that will be initiating the conference call.
*/
@synthesize from;

/**
* A valid 10-digit number (E.164 format) that is to receive the conference call.
*/
@synthesize to;

/**
* URL requested once the conference connects
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
* URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the conference is finished.
*/
@synthesize statusCallBackUrl;

/**
* Specifies the HTTP methodlinkclass used to request StatusCallbackUrl.
*/
@synthesize statusCallBackMethod;

/**
* URL requested if the initial Url parameter fails or encounters an error
*/
@synthesize fallbackUrl;

/**
* Specifies the HTTP method used to request the required FallbackUrl once call connects.
*/
@synthesize fallbackMethod;

/**
* Specifies if the conference should be recorded.
*/
@synthesize record;

/**
* Recording parameters will be sent here upon completion.
*/
@synthesize recordCallBackUrl;

/**
* Specifies the HTTP method used to request the required URL once conference connects.
*/
@synthesize recordCallBackMethod;

/**
* Schedule conference in future. Schedule time must be greater than current time
*/
@synthesize scheduleTime;

/**
* The number of seconds the call stays on the line while waiting for an answer. The max time limit is 999 and the default limit is 60 seconds but lower times can be set.
*/
@synthesize timeout;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.method = [HttpActionEnumHelper httpActionEnumFromString:@"POST"];
    }
    return self;
}

 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) method withDefault:@"POST"];

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
-(id) JSONObjectForFallbackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) fallbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setFallbackMethodWithNSString:(NSString*) strValue
{
    fallbackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
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