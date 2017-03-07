//
//  ActivateStatus.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_ACTIVATESTATUSHELPER
#define APIMATIC_ACTIVATESTATUSHELPER

#include "ActivateStatus.h"

/**
* Helper class interface for ActivateStatus to NSString conversion
*/
@interface ActivateStatusHelper : NSObject

+(id) stringFromActivateStatus:(enum ActivateStatus) activateStatus withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromActivateStatusArray:(NSArray<NSNumber*>*) array;


+(enum ActivateStatus) activateStatusFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) activateStatusArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif