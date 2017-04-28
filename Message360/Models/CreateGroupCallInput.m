//
//  CreateGroupCallInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateGroupCallInput.h"

@implementation CreateGroupCallInput

/**
* TODO: Write general description for this method
*/
@synthesize fromCountryCode;

/**
* TODO: Write general description for this method
*/
@synthesize from;

/**
* TODO: Write general description for this method
*/
@synthesize toCountryCode;

/**
* TODO: Write general description for this method
*/
@synthesize to;

/**
* TODO: Write general description for this method
*/
@synthesize url;

/**
* TODO: Write general description for this method
*/
@synthesize responseType;

/**
* TODO: Write general description for this method
*/
@synthesize method;

/**
* TODO: Write general description for this method
*/
@synthesize statusCallBackUrl;

/**
* TODO: Write general description for this method
*/
@synthesize statusCallBackMethod;

/**
* TODO: Write general description for this method
*/
@synthesize fallBackUrl;

/**
* TODO: Write general description for this method
*/
@synthesize fallBackMethod;

/**
* TODO: Write general description for this method
*/
@synthesize heartBeatUrl;

/**
* TODO: Write general description for this method
*/
@synthesize heartBeatMethod;

/**
* TODO: Write general description for this method
*/
@synthesize timeout;

/**
* TODO: Write general description for this method
*/
@synthesize playDtmf;

/**
* TODO: Write general description for this method
*/
@synthesize hideCallerId;

/**
* TODO: Write general description for this method
*/
@synthesize record;

/**
* TODO: Write general description for this method
*/
@synthesize recordCallBackUrl;

/**
* TODO: Write general description for this method
*/
@synthesize recordCallBackMethod;

/**
* TODO: Write general description for this method
*/
@synthesize transcribe;

/**
* TODO: Write general description for this method
*/
@synthesize transcribeCallBackUrl;

-(id)init
{
    if (self = [super init])
    {
        self.fromCountryCode = @"1";
        self.toCountryCode = @"1";
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


@end