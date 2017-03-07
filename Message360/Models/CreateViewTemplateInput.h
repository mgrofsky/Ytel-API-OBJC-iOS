//
//  CreateViewTemplateInput.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_CREATEVIEWTEMPLATEINPUT
#define APIMATIC_CREATEVIEWTEMPLATEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol CreateViewTemplateInput
@end

@interface CreateViewTemplateInput : NSObject

/**
* The unique identifier for a template object
*/
@property NSUUID* templateid;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif