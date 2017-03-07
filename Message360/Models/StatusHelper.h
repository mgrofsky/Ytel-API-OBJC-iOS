//
//  Status.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_STATUSHELPER
#define APIMATIC_STATUSHELPER

#include "Status.h"

/**
* Helper class interface for Status to NSString conversion
*/
@interface StatusHelper : NSObject

+(id) stringFromStatus:(enum Status) status withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromStatusArray:(NSArray<NSNumber*>*) array;


+(enum Status) statusFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) statusArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif