//
//  YtelAPIV3
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io ).
//
#ifndef APIMATIC_AUDIOURLENUMHELPER
#define APIMATIC_AUDIOURLENUMHELPER

#include "AudioUrlEnum.h"

/**
* Helper class interface for AudioUrlEnum to NSString conversion
*/
@interface AudioUrlEnumHelper : NSObject

+(id) stringFromAudioUrlEnum:(enum AudioUrlEnum) audioUrlEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromAudioUrlEnumArray:(NSArray<NSNumber*>*) array;


+(enum AudioUrlEnum) audioUrlEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) audioUrlEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif