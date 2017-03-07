//
//  HttpAction.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_HTTPACTIONHELPER
#define APIMATIC_HTTPACTIONHELPER

#include "HttpAction.h"

/**
* Helper class interface for HttpAction to NSString conversion
*/
@interface HttpActionHelper : NSObject

+(id) stringFromHttpAction:(enum HttpAction) httpAction withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromHttpActionArray:(NSArray<NSNumber*>*) array;


+(enum HttpAction) httpActionFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) httpActionArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif