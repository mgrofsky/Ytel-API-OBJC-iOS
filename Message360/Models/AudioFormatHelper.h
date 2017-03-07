//
//  AudioFormat.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_AUDIOFORMATHELPER
#define APIMATIC_AUDIOFORMATHELPER

#include "AudioFormat.h"

/**
* Helper class interface for AudioFormat to NSString conversion
*/
@interface AudioFormatHelper : NSObject

+(id) stringFromAudioFormat:(enum AudioFormat) audioFormat withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromAudioFormatArray:(NSArray<NSNumber*>*) array;


+(enum AudioFormat) audioFormatFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) audioFormatArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif