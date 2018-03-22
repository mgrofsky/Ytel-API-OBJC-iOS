//
//  AudioDirectionEnum.h
//  Ytel
//
//  This file was automatically generated for ytel by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_AUDIODIRECTIONENUMHELPER
#define APIMATIC_AUDIODIRECTIONENUMHELPER

#include "AudioDirectionEnum.h"

/**
* Helper class interface for AudioDirectionEnum to NSString conversion
*/
@interface AudioDirectionEnumHelper : NSObject

+(id) stringFromAudioDirectionEnum:(enum AudioDirectionEnum) audioDirectionEnum withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromAudioDirectionEnumArray:(NSArray<NSNumber*>*) array;


+(enum AudioDirectionEnum) audioDirectionEnumFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) audioDirectionEnumArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif