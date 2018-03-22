//
//  ViewShortcodeInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewShortcodeInput.h"

@implementation ViewShortcodeInput

/**
* The unique identifier for the sms resource
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