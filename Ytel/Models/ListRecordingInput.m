//
//  ListRecordingInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ListRecordingInput.h"

@implementation ListRecordingInput

/**
* Response type format xml or json
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
* Filter results by creation date
*/
@synthesize datecreated;

/**
* The unique identifier for a call.
*/
@synthesize callsid;

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