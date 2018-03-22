//
//  ViewDedicatedShortcodeAssignmentInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewDedicatedShortcodeAssignmentInput.h"

@implementation ViewDedicatedShortcodeAssignmentInput

/**
* List of valid Dedicated Short Code to your Ytel account
*/
@synthesize shortcode;

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