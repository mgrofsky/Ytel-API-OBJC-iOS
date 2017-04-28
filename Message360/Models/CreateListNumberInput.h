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

#import "NumberTypeEnum.h"
#import "NumberTypeEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol CreateListNumberInput
@end

@interface CreateListNumberInput : NSObject

/**
* Response type format xml or json
*/
@property NSString* responseType;

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
@property enum NumberTypeEnum numberType;

/**
* TODO: Write general description for this field
*/
@property NSString* friendlyName;

@end
#endif