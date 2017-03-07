//
//  InterruptedCallStatus.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_INTERRUPTEDCALLSTATUSHELPER
#define APIMATIC_INTERRUPTEDCALLSTATUSHELPER

#include "InterruptedCallStatus.h"

/**
* Helper class interface for InterruptedCallStatus to NSString conversion
*/
@interface InterruptedCallStatusHelper : NSObject

+(id) stringFromInterruptedCallStatus:(enum InterruptedCallStatus) interruptedCallStatus withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromInterruptedCallStatusArray:(NSArray<NSNumber*>*) array;


+(enum InterruptedCallStatus) interruptedCallStatusFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) interruptedCallStatusArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif