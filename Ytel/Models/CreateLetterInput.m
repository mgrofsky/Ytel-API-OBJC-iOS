//
//  CreateLetterInput.m
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#import "CreateLetterInput.h"

@implementation CreateLetterInput

/**
* The AddressId or an object structured when creating an address by addresses/Create.
*/
@synthesize to;

/**
* The AddressId or an object structured when creating an address by addresses/Create.
*/
@synthesize from;

/**
* Set an existing letter by attaching its LetterId.
*/
@synthesize attachbyid;

/**
* File can be a 8.5"x11" PDF uploaded file or URL that links to a file.
*/
@synthesize file;

/**
* Specify if letter should be printed in color.
*/
@synthesize color;

/**
* Response Type either json or xml
*/
@synthesize responseType;

/**
* A description for the letter.
*/
@synthesize description;

/**
* Add an extra service to your letter. Options are "certified" or "registered". Certified provides tracking and delivery confirmation for domestic destinations and is an additional $5.00. Registered provides tracking and confirmation for international addresses and is an additional $16.50.
*/
@synthesize extraservice;

/**
* Specify if letter should be printed on both sides.
*/
@synthesize doublesided;

/**
* Boolean that defaults to true. When set to false, this specifies that your letter does not follow the m360 address template. In this case, a blank address page will be inserted at the beginning of your file and you will be charged for the extra page.
*/
@synthesize template;

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