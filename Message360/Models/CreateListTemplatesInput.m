//
//  CreateListTemplatesInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListTemplatesInput.h"

@implementation CreateListTemplatesInput

/**
* The type (category) of template Valid values: marketing, authorization
*/
@synthesize type;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize page;

/**
* The count of objects to return per page.
*/
@synthesize pagesize;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.type = @"authorization";
        self.pagesize = 10;
        self.responseType = @"json";
    }
    return self;
}

@end