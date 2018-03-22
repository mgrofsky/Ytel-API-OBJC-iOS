//
//  ListBouncesInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListBouncesInput.h"

@implementation ListBouncesInput

/**
* Response type format xml or json
*/
@synthesize responseType;

/**
* The starting point of the list of bounced emails that should be returned.
*/
@synthesize offset;

/**
* The count of results that should be returned.
*/
@synthesize limit;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end