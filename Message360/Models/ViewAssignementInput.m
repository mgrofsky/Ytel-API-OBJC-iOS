//
//  ViewAssignementInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewAssignementInput.h"

@implementation ViewAssignementInput

/**
* List of valid Shortcode to your message360 account
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