//
//  ListTemplatesInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListTemplatesInput.h"

@implementation ListTemplatesInput

/**
* Response type format xml or json
*/
@synthesize responseType;

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
* Only list templates of type
*/
@synthesize shortcode;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.type = @"authorization";
        self.page = 1;
        self.pagesize = 10;
    }
    return self;
}

@end