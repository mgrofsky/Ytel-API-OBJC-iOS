//
//  Direction.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_DIRECTIONHELPER
#define APIMATIC_DIRECTIONHELPER

#include "Direction.h"

/**
* Helper class interface for Direction to NSString conversion
*/
@interface DirectionHelper : NSObject

+(id) stringFromDirection:(enum Direction) direction withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromDirectionArray:(NSArray<NSNumber*>*) array;


+(enum Direction) directionFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) directionArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif