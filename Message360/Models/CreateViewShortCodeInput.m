//
//  CreateViewShortCodeInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateViewShortCodeInput.h"

@implementation CreateViewShortCodeInput

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