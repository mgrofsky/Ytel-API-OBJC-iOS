//
//  ViewPostcardInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewPostcardInput.h"

@implementation ViewPostcardInput

/**
* The unique identifier for a postcard object.
*/
@synthesize postcardid;

/**
* Response Type either json or xml
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