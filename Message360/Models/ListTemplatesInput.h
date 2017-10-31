//
//  ListTemplatesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTTEMPLATESINPUT
#define APIMATIC_LISTTEMPLATESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListTemplatesInput
@end

@interface ListTemplatesInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The type (category) of template Valid values: marketing, authorization
*/
@property NSString* type;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* The count of objects to return per page.
*/
@property int pagesize;

/**
* Only list templates of type
*/
@property NSString* shortcode;

@end
#endif