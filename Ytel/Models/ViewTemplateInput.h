//
//  ViewTemplateInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWTEMPLATEINPUT
#define APIMATIC_VIEWTEMPLATEINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewTemplateInput
@end

@interface ViewTemplateInput : NSObject

/**
* The unique identifier for a template object
*/
@property NSUUID* templateId;

/**
* Response type format xml or json
*/
@property NSString* responseType;

@end
#endif