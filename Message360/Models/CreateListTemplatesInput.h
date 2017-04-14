//
//  CreateListTemplatesInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTTEMPLATESINPUT
#define APIMATIC_CREATELISTTEMPLATESINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateListTemplatesInput
@end

@interface CreateListTemplatesInput : NSObject

/**
* The type (category) of template Valid values: marketing, authorization
*/
@property NSString* type;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property NSNumber* page;

/**
* The count of objects to return per page.
*/
@property int pagesize;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif