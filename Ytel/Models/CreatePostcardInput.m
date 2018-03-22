//
//  CreatePostcardInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreatePostcardInput.h"

@implementation CreatePostcardInput

/**
* The AddressId or an object structured when creating an address by addresses/Create.
*/
@synthesize to;

/**
* The AddressId or an object structured when creating an address by addresses/Create.
*/
@synthesize from;

/**
* Set an existing postcard by attaching its PostcardId.
*/
@synthesize attachbyid;

/**
* A 4.25"x6.25" or 6.25"x11.25" image to use as the front of the postcard.  This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG.
*/
@synthesize front;

/**
* A 4.25"x6.25" or 6.25"x11.25" image to use as the back of the postcard, supplied as a URL, local file, or HTML string.  This allows you to customize your back design, but we will still insert the recipient address for you.
*/
@synthesize back;

/**
* The message for the back of the postcard with a maximum of 350 characters.
*/
@synthesize message;

/**
* Code for the dimensions of the media to be printed.
*/
@synthesize setting;

/**
* Response Type either json or xml
*/
@synthesize responseType;

/**
* A description for the postcard.
*/
@synthesize description;

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