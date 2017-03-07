//
//  CreateListNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATELISTNUMBERINPUT
#define APIMATIC_CREATELISTNUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "NumberType.h"
#import "NumberTypeHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateListNumberInput
@end

@interface CreateListNumberInput : NSObject

/**
* Which page of the overall response will be returned. Zero indexed
*/
@property NSNumber* page;

/**
* Number of individual resources listed in the response per page
*/
@property int pageSize;

/**
* TODO: Write general description for this field
*/
@property enum NumberType numberType;

/**
* TODO: Write general description for this field
*/
@property NSString* friendlyName;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif