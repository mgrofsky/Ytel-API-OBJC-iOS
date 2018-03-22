//
//  ViewPostcardInput.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_VIEWPOSTCARDINPUT
#define APIMATIC_VIEWPOSTCARDINPUT

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "APIHelper.h"



//protocol defined for deserialization of JSON
@protocol ViewPostcardInput
@end

@interface ViewPostcardInput : NSObject

/**
* The unique identifier for a postcard object.
*/
@property NSString* postcardid;

/**
* Response Type either json or xml
*/
@property NSString* responseType;

@end
#endif