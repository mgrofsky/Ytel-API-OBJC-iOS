//
//  CreateSendShortCodeInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateSendShortCodeInput.h"

@implementation CreateSendShortCodeInput

/**
* The Short Code number that is the sender of this message
*/
@synthesize shortcode;

/**
* The country code for sending this message
*/
@synthesize tocountrycode;

/**
* A valid 10-digit number that should receive the message+
*/
@synthesize to;

/**
* The unique identifier for the template used for the message
*/
@synthesize templateid;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* format of your data, example: {companyname}:test,{otpcode}:1234
*/
@synthesize data;

/**
* Specifies the HTTP method used to request the required URL once the Short Code message is sent.
*/
@synthesize method;

/**
* URL that can be requested to receive notification when Short Code message was sent.
*/
@synthesize messageStatusCallback;

-(id)init
{
    if (self = [super init])
    {
        self.tocountrycode = @"1";
        self.responseType = @"json";
        self.method = @"GET";
    }
    return self;
}

@end