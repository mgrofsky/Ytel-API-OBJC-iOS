//
//  AudioFormat.h
//  Message360
//
//  This file was automatically generated for message360 by APIMATIC v2.0 ( https://apimatic.io )
//
#include "AudioFormatHelper.h"

/**
* Helper class implementation for AudioFormat to NSString conversion
*/
@implementation AudioFormatHelper

+(id) stringFromAudioFormat:(enum AudioFormat) audioFormat withDefault: (id) defaultValue
{
    switch(audioFormat)
    {
        case AudioFormatMp3:
            return @"mp3";

        case AudioFormatWav:
            return @"wav";

        default:
            return defaultValue;
    }
}

+(NSArray<NSString*>*) stringArrayFromAudioFormatArray:(NSArray<NSNumber*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSNumber* numberValue in array){
        NSNumber* stringValue = [AudioFormatHelper stringFromAudioFormat:(enum AudioFormat) numberValue.intValue withDefault:[NSNull null]];
        [enums addObject:stringValue];
    }
    return [enums copy];
}

+(enum AudioFormat) audioFormatFromString:(NSString*) strValue
{
    NSArray* AudioFormatArray = [NSArray arrayWithObjects:
                                        @"mp3",
                                        @"wav",
                                        nil];

    return (enum AudioFormat) [AudioFormatArray indexOfObject: strValue];
}


+(NSArray<NSNumber*>*) audioFormatArrayFromStringArray:(NSArray<NSString*>*) array
{
    NSMutableArray* enums = [[NSMutableArray alloc]init]; 
    for(NSString* enumValue in array){
        NSNumber* numberValue = [NSNumber numberWithInt:[ AudioFormatHelper audioFormatFromString:enumValue]];
        [enums addObject:numberValue];
    }
    return [enums copy];
}

@end