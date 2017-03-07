//
//  IfMachine.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_IFMACHINEHELPER
#define APIMATIC_IFMACHINEHELPER

#include "IfMachine.h"

/**
* Helper class interface for IfMachine to NSString conversion
*/
@interface IfMachineHelper : NSObject

+(id) stringFromIfMachine:(enum IfMachine) ifMachine withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromIfMachineArray:(NSArray<NSNumber*>*) array;


+(enum IfMachine) ifMachineFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) ifMachineArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif