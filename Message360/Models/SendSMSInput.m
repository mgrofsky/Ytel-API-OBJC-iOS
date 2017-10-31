//
//  SendSMSInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SendSMSInput.h"

@implementation SendSMSInput

/**
* SMS enabled Message360 number to send this message from
*/
@synthesize from;

/**
* Number to send the SMS to
*/
@synthesize to;

/**
* Text Message To Send
*/
@synthesize body;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* Specifies the HTTP method used to request the required URL once SMS sent.
*/
@synthesize method;

/**
* URL that can be requested to receive notification when SMS has Sent. A set of default parameters will be sent here once the SMS is finished.
*/
@synthesize messagestatuscallback;

/**
* Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message.
*/
@synthesize smartsms;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.smartsms = NO;
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