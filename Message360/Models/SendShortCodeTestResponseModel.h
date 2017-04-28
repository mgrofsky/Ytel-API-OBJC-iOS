//
//  SendShortCodeTestResponseModel.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_SENDSHORTCODETESTRESPONSEMODEL
#define APIMATIC_SENDSHORTCODETESTRESPONSEMODEL

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "Message360Model.h"


//protocol defined for deserialization of JSON
@protocol SendShortCodeTestResponseModel
@end

@interface SendShortCodeTestResponseModel : JSONModel

/**
* TODO: Write general description for this field
*/
@property Message360Model* message360;


/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap;

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper;

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName;

@end
#endif