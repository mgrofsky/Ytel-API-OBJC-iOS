//
//  ListAssignmentInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTASSIGNMENTINPUT
#define APIMATIC_LISTASSIGNMENTINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ListAssignmentInput
@end

@interface ListAssignmentInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

/**
* Which page of the overall response will be returned. Zero indexed
*/
@property int page;

/**
* Number of individual resources listed in the response per page
*/
@property int pageSize;

/**
* Only list keywords of shortcode
*/
@property NSString* shortcode;

@end
#endif