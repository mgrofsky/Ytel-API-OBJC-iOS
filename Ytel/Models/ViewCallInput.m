//
//  ViewCallInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewCallInput.h"

@implementation ViewCallInput

/**
* The unique identifier for the voice call.
*/
@synthesize callsid;

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