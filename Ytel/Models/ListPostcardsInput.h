//
//  ListPostcardsInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTPOSTCARDSINPUT
#define APIMATIC_LISTPOSTCARDSINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListPostcardsInput
@end

@interface ListPostcardsInput : NSObject

/**
* Response Type either json or xml
*/
@property NSString* responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* The count of objects to return per page.
*/
@property int pagesize;

/**
* The unique identifier for a postcard object.
*/
@property NSString* postcardid;

/**
* The date the postcard was created.
*/
@property NSString* dateCreated;

@end
#endif