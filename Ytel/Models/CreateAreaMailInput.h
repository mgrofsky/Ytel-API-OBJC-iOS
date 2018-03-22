//
//  CreateAreaMailInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEAREAMAILINPUT
#define APIMATIC_CREATEAREAMAILINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateAreaMailInput
@end

@interface CreateAreaMailInput : NSObject

/**
* List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route.List of routes that AreaMail should be delivered to.  A single route can be either a zipcode or a carrier route. A carrier route is in the form of 92610-C043 where the carrier route is composed of 5 numbers for zipcode, 1 letter for carrier route type, and 3 numbers for carrier route code. Delivery can be sent to mutliple routes by separating them with a commas. Valid Values: 92656, 92610-C043
*/
@property NSString* routes;

/**
* Set an existing areamail by attaching its AreamailId.
*/
@property NSString* attachbyid;

/**
* The front of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG. Back required
*/
@property NSString* front;

/**
* The back of the AreaMail item to be created. This can be a URL, local file, or an HTML string. Supported file types are PDF, PNG, and JPEG.
*/
@property NSString* back;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

/**
* A string value to use as a description for this AreaMail item.
*/
@property NSString* description;

/**
* The delivery location type.
*/
@property NSString* targettype;

/**
* A string value that contains HTML markup.
*/
@property NSString* htmldata;

@end
#endif