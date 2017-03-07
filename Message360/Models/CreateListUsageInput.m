//
//  CreateListUsageInput.m
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateListUsageInput.h"

@implementation CreateListUsageInput

/**
* Product Code
*/
@synthesize productCode;

/**
* Start Usage Date
*/
@synthesize startDate;

/**
* End Usage Date
*/
@synthesize endDate;

/**
* Response type format xml or json
*/
@synthesize responseType;

-(id)init
{
    if (self = [super init])
    {
        self.productCode = [ProductCodeHelper productCodeFromString:@"0"];
        self.startDate = @"2016-09-06";
        self.endDate = @"2016-09-06";
        self.responseType = @"json";
    }
    return self;
}

@end