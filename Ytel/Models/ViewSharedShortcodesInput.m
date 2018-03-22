//
//  ViewSharedShortcodesInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewSharedShortcodesInput.h"

@implementation ViewSharedShortcodesInput

/**
* Message sid
*/
@synthesize messagesid;

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