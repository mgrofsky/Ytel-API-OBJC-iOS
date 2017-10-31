//
//  SendDedicatedShortcodeInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
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
* Callback status method, POST or GET
*/
@synthesize method;

/**
* Callback url for SMS status
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