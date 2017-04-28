//
//  TemplateDataModel.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_TEMPLATEDATAMODEL
#define APIMATIC_TEMPLATEDATAMODEL

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol TemplateDataModel
@end

@interface TemplateDataModel : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* companyname;

/**
* TODO: Write general description for this field
*/
@property NSString* otpcode;


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