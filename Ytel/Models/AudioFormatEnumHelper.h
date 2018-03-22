//
//  AudioFormatEnum.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_AUDIOFORMATENUMHELPER
#define APIMATIC_AUDIOFORMATENUMHELPER

#include "AudioFormatEnum.h"

/**
* Helper class interface for AudioFormatEnum to NSString conversion
*/
@interface AudioFormatEnumHelper : NSObject

+(id) stringFromAudioFormatEnum:(enum AudioFormatEnum) audioFormatEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromAudioFormatEnumArray:(NSArray<NSNumber*>*) array;


+(enum AudioFormatEnum) audioFormatEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) audioFormatEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif