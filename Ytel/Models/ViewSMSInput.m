//
//  ViewSMSInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewSMSInput.h"

@implementation ViewSMSInput

/**
* The unique identifier for a sms message.
*/
@synthesize messageSid;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end