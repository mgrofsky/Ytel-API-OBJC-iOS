//
//  CreateConferenceInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateConferenceInput.h"

@implementation CreateConferenceInput

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
* Specifies the HTTP method used to request the required URL once call connects.
*/
@synthesize method;

/**
* Recording parameters will be sent here upon completion.
*/
@synthesize recordCallbackUrl;

/**
* Response type format xml or json
*/
@synthesize responseType;

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
@synthesize fallBackUrl;

/**
* Specifies the HTTP method used to request the required FallbackUrl once call connects.
*/
@synthesize fallBackMethod;

/**
* Specifies if the conference should be recorded.
*/
@synthesize record;

/**
* Specifies the HTTP method used to request the required URL once conference connects.
*/
@synthesize recordCallbackMethod;

/**
* Schedule conference in future. Schedule time must be greater than current time
*/
@synthesize schdeuleTime;

/**
* The number of seconds the call stays on the line while waiting for an answer. The max time limit is 999 and the default limit is 60 seconds but lower times can be set.
*/
@synthesize timeout;

-(id)init
{
    if (self = [super init])
    {
        self.method = [HttpActionEnumHelper httpActionEnumFromString:@"POST"];
        self.responseType = @"json";
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
-(id) JSONObjectForRecordCallbackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) recordCallbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setRecordCallbackMethodWithNSString:(NSString*) strValue
{
    recordCallbackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


@end