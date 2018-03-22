//
//  DeletePostcardInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "DeletePostcardInput.h"

@implementation DeletePostcardInput

/**
* The unique identifier of a postcard object.
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