//
//  CreateLetterInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELETTERINPUT
#define APIMATIC_CREATELETTERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateLetterInput
@end

@interface CreateLetterInput : NSObject

/**
* The AddressId or an object structured when creating an address by addresses/Create.
*/
@property NSString* to;

/**
* The AddressId or an object structured when creating an address by addresses/Create.
*/
@property NSString* from;

/**
* Set an existing letter by attaching its LetterId.
*/
@property NSString* attachbyid;

/**
* File can be a 8.5"x11" PDF uploaded file or URL that links to a file.
*/
@property NSString* file;

/**
* Specify if letter should be printed in color.
*/
@property NSString* color;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

/**
* A description for the letter.
*/
@property NSString* description;

/**
* Add an extra service to your letter. Options are "certified" or "registered". Certified provides tracking and delivery confirmation for domestic destinations and is an additional $5.00. Registered provides tracking and confirmation for international addresses and is an additional $16.50.
*/
@property NSString* extraservice;

/**
* Specify if letter should be printed on both sides.
*/
@property NSString* doublesided;

/**
* Boolean that defaults to true. When set to false, this specifies that your letter does not follow the m360 address template. In this case, a blank address page will be inserted at the beginning of your file and you will be charged for the extra page.
*/
@property NSString* template;

/**
* A string value that contains HTML markup.
*/
@property NSString* htmldata;

@end
#endif