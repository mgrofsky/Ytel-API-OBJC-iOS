//
//  AudioDirection.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#ifndef APIMATIC_AUDIODIRECTIONHELPER
#define APIMATIC_AUDIODIRECTIONHELPER

#include "AudioDirection.h"

/**
* Helper class interface for AudioDirection to NSString conversion
*/
@interface AudioDirectionHelper : NSObject

+(id) stringFromAudioDirection:(enum AudioDirection) audioDirection withDefault: (id) defaultValue;

+(NSArray<NSString*>*) stringArrayFromAudioDirectionArray:(NSArray<NSNumber*>*) array;


+(enum AudioDirection) audioDirectionFromString:(NSString*) strValue;

+(NSArray<NSNumber*>*) audioDirectionArrayFromStringArray:(NSArray<NSString*>*) array;

@end

#endif