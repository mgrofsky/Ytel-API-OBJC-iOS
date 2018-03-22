//
//  ListKeywordInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTKEYWORDINPUT
#define APIMATIC_LISTKEYWORDINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListKeywordInput
@end

@interface ListKeywordInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* The page count to retrieve from the total results in the collection. Page indexing starts at 1.
*/
@property int page;

/**
* Number of individual resources listed in the response per page
*/
@property int pagesize;

/**
* Only list keywords of keyword
*/
@property NSString* keyword;

/**
* Only list keywords of shortcode
*/
@property NSNumber* shortcode;

@end
#endif