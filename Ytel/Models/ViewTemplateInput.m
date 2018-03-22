//
//  ViewTemplateInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "ViewTemplateInput.h"

@implementation ViewTemplateInput

/**
* The unique identifier for a template object
*/
@synthesize templateId;

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