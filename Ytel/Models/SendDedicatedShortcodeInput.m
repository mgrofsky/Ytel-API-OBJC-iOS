//
//  SendDedicatedShortcodeInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SendDedicatedShortcodeInput.h"

@implementation SendDedicatedShortcodeInput

/**
* Your dedicated shortcode
*/
@synthesize shortcode;

/**
* The number to send your SMS to
*/
@synthesize to;

/**
* The body of your message
*/
@synthesize body;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Specifies the HTTP method used to request the required URL once the Short Code message is sent.GET or POST
*/
@synthesize method;

/**
* URL that can be requested to receive notification when Short Code message was sent.
*/
@synthesize messagestatuscallback;

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


@end