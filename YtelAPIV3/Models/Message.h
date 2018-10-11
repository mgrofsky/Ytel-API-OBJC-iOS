//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_MESSAGE
#define APIMATIC_MESSAGE

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "TemplateData.h"


//protocol defined for deserialization of JSON
@protocol Message
@end

@interface Message : JSONModel

/**
* TODO: Write general description for this field
*/
@property NSString* apiVersion;

/**
* TODO: Write general description for this field
*/
@property NSString* messageSid;

/**
* TODO: Write general description for this field
*/
@property NSString* from;

/**
* TODO: Write general description for this field
*/
@property NSString* to;

/**
* TODO: Write general description for this field
*/
@property NSString* messagePrice;

/**
* TODO: Write general description for this field
*/
@property NSString* body;

/**
* TODO: Write general description for this field
*/
@property NSString* dateSent;

/**
* TODO: Write general description for this field
*/
@property NSString* status;

/**
* TODO: Write general description for this field
*/
@property NSString* templateId;

/**
* TODO: Write general description for this field
*/
@property TemplateData* templateData;


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