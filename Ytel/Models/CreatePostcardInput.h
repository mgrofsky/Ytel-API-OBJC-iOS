//
//  CreatePostcardInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEPOSTCARDINPUT
#define APIMATIC_CREATEPOSTCARDINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreatePostcardInput
@end

@interface CreatePostcardInput : NSObject

/**
* The AddressId or an object structured when creating an address by addresses/Create.
*/
@property NSString* to;

/**
* The AddressId or an object structured when creating an address by addresses/Create.
*/
@property NSString* from;

/**
* Set an existing postcard by attaching its PostcardId.
*/
@property NSString* attachbyid;

/**
* A 4.25"x6.25" or 6.25"x11.25" image to use as the front of the postcard.  This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG.
*/
@property NSString* front;

/**
* A 4.25"x6.25" or 6.25"x11.25" image to use as the back of the postcard, supplied as a URL, local file, or HTML string.  This allows you to customize your back design, but we will still insert the recipient address for you.
*/
@property NSString* back;

/**
* The message for the back of the postcard with a maximum of 350 characters.
*/
@property NSString* message;

/**
* Code for the dimensions of the media to be printed.
*/
@property NSString* setting;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

/**
* A description for the postcard.
*/
@property NSString* description;

/**
* A string value that contains HTML markup.
*/
@property NSString* htmldata;

@end
#endif