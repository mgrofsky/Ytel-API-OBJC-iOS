//
//  InterruptedCallStatusEnum.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_INTERRUPTEDCALLSTATUSENUMHELPER
#define APIMATIC_INTERRUPTEDCALLSTATUSENUMHELPER

#include "InterruptedCallStatusEnum.h"

/**
* Helper class interface for InterruptedCallStatusEnum to NSString conversion
*/
@interface InterruptedCallStatusEnumHelper : NSObject

+(id) stringFromInterruptedCallStatusEnum:(enum InterruptedCallStatusEnum) interruptedCallStatusEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromInterruptedCallStatusEnumArray:(NSArray<NSNumber*>*) array;


+(enum InterruptedCallStatusEnum) interruptedCallStatusEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) interruptedCallStatusEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif