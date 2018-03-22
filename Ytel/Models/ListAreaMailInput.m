//
//  ListAreaMailInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListAreaMailInput.h"

@implementation ListAreaMailInput

/**
* Response Type either json or xml
*/
@synthesize responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@synthesize page;

/**
* The count of objects to return per page.
*/
@synthesize pagesize;

/**
* The unique identifier for an AreaMail object.
*/
@synthesize areamailsid;

/**
* The date the AreaMail was created.
*/
@synthesize dateCreated;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
        self.page = 1;
        self.pagesize = 10;
    }
    return self;
}

@end