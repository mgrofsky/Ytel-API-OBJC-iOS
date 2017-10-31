//
//  ErrorsModel.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ERRORSMODEL
#define APIMATIC_ERRORSMODEL

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "ErrorModel.h"


//protocol defined for deserialization of JSON
@protocol ErrorsModel
@end

@interface ErrorsModel : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSArray<ErrorModel> * error;


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