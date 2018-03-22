//
//  SendSMSInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "SendSMSInput.h"

@implementation SendSMSInput

/**
* The 10-digit SMS-enabled Ytel number (E.164 format) in which the message is sent.
*/
@synthesize from;

/**
* The 10-digit phone number (E.164 format) that will receive the message.
*/
@synthesize to;

/**
* The body message that is to be sent in the text.
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
@synthesize messageStatusCallback;

/**
* Check's 'to' number can receive sms or not using Carrier API, if wireless = true then text sms is sent, else wireless = false then call is recieved to end user with audible message.
*/
@synthesize smartsms;

/**
* Delivery reports are a method to tell your system if the message has arrived on the destination phone.
*/
@synthesize deliveryStatus;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.smartsms = NO;
        self.deliveryStatus = NO;
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