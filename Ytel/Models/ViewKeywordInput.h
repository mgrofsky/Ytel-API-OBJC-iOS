//
//  ViewKeywordInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWKEYWORDINPUT
#define APIMATIC_VIEWKEYWORDINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewKeywordInput
@end

@interface ViewKeywordInput : NSObject

/**
* The unique identifier of each keyword
*/
@property NSString* keywordid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif