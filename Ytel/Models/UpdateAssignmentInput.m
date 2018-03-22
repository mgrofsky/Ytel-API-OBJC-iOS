//
//  UpdateAssignmentInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "UpdateAssignmentInput.h"

@implementation UpdateAssignmentInput

/**
* List of valid shortcode to your Ytel account
*/
@synthesize shortcode;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* User generated name of the shortcode
*/
@synthesize friendlyName;

/**
* URL that can be requested to receive notification when call has ended. A set of default parameters will be sent here once the call is finished.
*/
@synthesize callbackUrl;

/**
* Specifies the HTTP method used to request the required StatusCallBackUrl once call connects.
*/
@synthesize callbackMethod;

/**
* URL used if any errors occur during execution of InboundXML or at initial request of the required Url provided with the POST.
*/
@synthesize fallbackUrl;

/**
* Specifies the HTTP method used to request the required FallbackUrl once call connects.
*/
@synthesize fallbackUrlMethod;

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
-(id) JSONObjectForCallbackMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) callbackMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setCallbackMethodWithNSString:(NSString*) strValue
{
    callbackMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


 /**
 * For serialization of enum HttpActionEnum type property as NSString*
 */
-(id) JSONObjectForFallbackUrlMethod
{
     
    return [HttpActionEnumHelper stringFromHttpActionEnum:(enum HttpActionEnum) fallbackUrlMethod withDefault: nil];

}

/**
 * For deserialization of enum HttpActionEnum type property from NSString*
 */
 
-(void)setFallbackUrlMethodWithNSString:(NSString*) strValue
{
    fallbackUrlMethod = [HttpActionEnumHelper httpActionEnumFromString:(NSString*) strValue];
}


@end