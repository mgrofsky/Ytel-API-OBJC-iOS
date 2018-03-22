//
//  CreateAreaMailInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateAreaMailInput.h"

@implementation CreateAreaMailInput

/**
* List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route.List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route. A carrier route is in the form of 92610-C043 where the carrier route is composed of 5 numbers for zipcode, 1 letter for carrier route type, and 3 numbers for carrier route code. Delivery can be sent to mutliple routes by separating them with a commas. Valid Values: 92656, 92610-C043
*/
@synthesize routes;

/**
* Set an existing areamail by attaching its AreamailId.
*/
@synthesize attachbyid;

/**
* The front of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. Back required
*/
@synthesize front;

/**
* The back of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG.
*/
@synthesize back;

/**
* Response Type either json or xml
*/
@synthesize responseType;

/**
* A string value to use as a description for this AreaMail item.
*/
@synthesize description;

/**
* The delivery location type.
*/
@synthesize targettype;

/**
* A string value that contains HTML markup.
*/
@synthesize htmldata;

-(id)init
{
    if (self = [super init])
    {
        self.responseType = @"json";
    }
    return self;
}

@end