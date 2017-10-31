//
//  ListNumberInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_LISTNUMBERINPUT
#define APIMATIC_LISTNUMBERINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "NumberTypeEnum.h"
#import "NumberTypeEnumHelper.h"


//protocol defined for deserialization of JSON
@protocol ListNumberInput
@end

@interface ListNumberInput : NSObject

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
* SMS or Voice
*/
@property enum NumberTypeEnum numberType;

/**
* Friendly name of the number
*/
@property NSString* friendlyName;

@end
#endif