//
//  CreateSendRinglessVMInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateSendRinglessVMInput.h"

@implementation CreateSendRinglessVMInput

/**
* From country code
*/
@synthesize fromCountryCode;

/**
* This number to display on Caller ID as calling
*/
@synthesize from;

/**
* To country code
*/
@synthesize toCountryCode;

/**
* To number
*/
@synthesize to;

/**
* URL to an audio file
*/
@synthesize voiceMailURL;

/**
* Not currently used in this version
*/
@synthesize method;

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* URL to post the status of the Ringless request
*/
@synthesize statusCallBackUrl;

/**
* POST or GET
*/
@synthesize statsCallBackMethod;

-(id)init
{
    if (self = [super init])
    {
        self.method = @"GET";
        self.responseType = @"json";
    }
    return self;
}

@end