//
//  Message360Model.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_MESSAGE360MODEL
#define APIMATIC_MESSAGE360MODEL

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"

#import "MessageModel.h"


//protocol defined for deserialization of JSON
@protocol Message360Model
@end

@interface Message360Model : JSONModel

/**
* TODO: Write general description for this field
*/
@property int responseStatus;

/**
* TODO: Write general description for this field
*/
@property int messageCount;

/**
* TODO: Write general description for this field
*/
@property MessageModel* message;


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